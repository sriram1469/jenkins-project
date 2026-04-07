pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'sh 'docker build --no-cache -t demo:v1 .''
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:8080 --name myapp myapp:latest'
            }
        }
    }
}
