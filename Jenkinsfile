pipeline {
    agent any
    stages {
        stage('Build Jar') {
            steps {
                bat "mvn clean package -DskipTests"
            }
        }
        stage('Build Image') {
            steps {
            bat "docker build -agent='suryajit7/selenium-docker' ."
            }
        }
        stage('Push Image') {
            steps {

            withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'pass', usernameVariable: 'user')])
            bat "docker login --usernamePassword=${user} --passwordVariable=${pass}"
            bat "docker push suryajit7/selenium-docker:latest"
                }
            }
        }
    }
}