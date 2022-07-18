pipeline {
    agent any

environment {
    dockerhub = credentials('dockerhub')
    registry  = "georgekc/cicd"
}

 stages {

    stage('Clone reprository') {
     steps {
        checkout scm
            }
        }


    stage('Build Docker Image and tag it') {
    steps {
        sh 'docker build -t myapp .'
        sh 'docker tag myapp:latest $registry:latest'
    }
   }

    stage('Push Docker image to the registry') {
     steps {
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
            sh 'docker push $registry:latest'

        }
        }
   }

    stage('Tagging image') {
        steps {
            sh 'docker tag $registry:latest $registry:$BUILD_NUMBER'
            withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
                sh 'docker push $registry:$BUILD_NUMBER'
            }
        }
    }

    stage('Cleaning up') {
        steps {
            sh 'docker rmi $registry:$BUILD_NUMBER'
        }
    }

    stage ('Kubernetes deployment') {
    steps {
        sh 'kubectl apply -f deployment.yaml'
        sh 'kubectl apply -f service.yaml'
    }
   }
 }

}
