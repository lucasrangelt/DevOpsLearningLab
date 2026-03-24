pipeline {
    agent {
        kubernetes {
            yaml """
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: jenkins-container
    image: docker:latest
    command: ['cat']
    tty: true
    volumeMounts:
    - name: dockersock
      mountPath: /var/run/docker.sock
  volumes:
    - name: dockersock
      hostPath: /var/run/docker.sock
    """
        }
    }
    environment {
        DOCKER_IMAGE = "lucasrangel2011/heartbeat-app"
        TAG = "${env.BUILD_NUMBER}"
    }
    stages {
        stage('Build & Push') {
            steps {
                container('jenkins-container') {
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                        // This command builds the Docker image for the application using your Dockerfile
                        sh 'docker build -t ${DOCKER_IMAGE}:${TAG} ./app'
                        sh 'echo \$DOCKER_PASS | docker login -u \$DOCKER_USER --password-stdin'
                        sh 'docker push ${DOCKER_IMAGE}:${TAG}'
                    }
                }
            }
        }
        stage('Update Manifest') {
            steps {
                echo 'Updating deployment.yml to use version ${TAG}'
                sh 'sed -i "s|image: .*|image: ${DOCKER_IMAGE}:${TAG}|" deployment.yml'
            }
        }
    }
}