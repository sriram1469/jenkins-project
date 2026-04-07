pipeline {
 agent any
 stages {
  stage('Build') {
   steps {
    sh 'mvn clean package -DskipTests'
   }
  }
  stage('Docker') {
   steps {
    sh 'docker build -t devops-app .'
   }
  }
 }
}
