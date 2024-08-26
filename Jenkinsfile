pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/vamshidhar6868/mymart1.git']]) 
            }
        }
        stage('docker') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred') {
                         sh 'docker build -t vamshidharreddy06/mymart .'
                         sh 'docker push vamshidharreddy06/mymart:latest'
                   }
               }
            }
        }
    }
}
