pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/vamshidhar6868/CandyStore.git']]) 
            }
        }
        stage('docker') {
            steps {
                script {
                     withDockerRegistry(credentialsId: 'docker-cred') {
                         sh 'docker build -t vamshidharreddy06/candystore .'
                         sh 'docker push vamshidharreddy06/candystore:latest'
                   }
               }
            }
        }
    }
}
