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
                sh 'mvn clean package -DskipTests' 
            }
        }
        stage('docker') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred') {
                         sh 'docker build -t vamshidharreddy06/mymart12 .'
                         sh 'docker push vamshidharreddy06/mymart12:latest'
                   }
               }
            }
        }
    }
}
