pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/vamshidhar6868/mymart1.git']]) 
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean package ' 
            }
        }
        stage('docker') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'aws-cred'){
                         sh 'docker build -t vamshidharreddy06/mymart123 .'
                         sh 'docker push vamshidharreddy06/mymart123:latest'
                   }
               }
            }
        }
    }
}
