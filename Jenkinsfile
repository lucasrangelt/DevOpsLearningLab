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
    stages {
        stage('Build') {
            steps {
                container('jenkins-container') {
                    sh 'docker build -t heartbeat-app:${env.BUILD_NUMBER} ./app'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }
    }
}