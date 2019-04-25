pipeline {
    agent any
    stages{
        stage('Fetch Project'){
            steps {
                sh label: 'Pull down code from bitbucket', script: 'git clone "https://github.com/ikekim/spring-web-application.git"'
            }
        }
    }
}