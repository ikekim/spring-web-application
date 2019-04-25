pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                sh label: 'Pull down code from bitbucket', script: 'rm -rf spring-web-application'
                sh label: 'Pull down code from bitbucket', script: 'git clone "https://github.com/ikekim/spring-web-application.git"'
                sh 'mvn clean compile'
            }
        }
    }
}