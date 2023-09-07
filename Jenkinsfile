pipeline {
    agent any
    
    stages {
        stage('Build maven') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sanyam40/springboot-jenkins']])
                bat 'mvn clean install'
            }
        }
        
        stage('Build docker image') {
            steps {
                script {
                    bat 'docker build -t boot/payment -f Dockerfile .'
                }
            }
        }
    }
}
