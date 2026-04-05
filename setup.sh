set -e

echo "Installing dependencies..."
brew install terraform minikube kubernetes-cli helm

echo "Starting minikube..."
minikube start

echo "Initializing Terraform..."
terraform init
terraform apply -auto-approve

echo "Setting up docker environment..."
eval $(minikube docker-env)

echo "Waiting for pods to be ready..."
kubectl wait --for=condition=available --timeout=300s deployment/argocd-server -n argocd
kubectl wait --for=condition=ready pod -l app.kubernetes.io/instance=jenkins -n jenkins --timeout=300s

echo "Preparing ArgoCD..."
pgrep -f "port-forward svc/argocd-server" | xargs kill -9 2>/dev/null || true
kubectl port-forward svc/argocd-server -n argocd 8080:443 > /dev/null 2>&1 &

echo "Building app..."
docker build -t heartbeat-app:v1 ./app

echo "Done. Following credentials are as follows:"
echo "---ArgoCD---"
echo "Username: admin"
echo "Password: $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)"
echo "URL: http://localhost:8080"

echo "---Jenkins---"
echo "Username: admin"
echo "Password: $(kubectl exec --namespace jenkins -it svc/jenkins -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password)"
echo "URL: $(minikube service jenkins -n jenkins --url)"