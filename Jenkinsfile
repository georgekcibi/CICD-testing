pipeline {
    agent any

environment {
    dockerhub = credentials('dockerhub')
}

 stages {

    stage('Clone reprository') {
     steps {
        checkout scm
            }
        }


    stage('Build Docker Image') {
    steps {
        sh 'docker build -t myapp .'
    }
   }
 }

}
