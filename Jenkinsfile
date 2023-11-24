pipeline {
    agent {
        label 'centos-7-slave'
    }

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: 'master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/lidorg-dev/python-flask-docker.git']])
            }
        }
        stage('Build') {
            steps {
                sh "docker build -t python-flask-docker:${env.BUILD_NUMBER} ."
            }
        }
    }
}