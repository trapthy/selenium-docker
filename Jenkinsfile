pipeline {
    agent any
    stages {
        stage('Build Jars') {

            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Build Images') {
            steps {
                script {
                	app = docker.build("suryajit7/selenium-docker")
                }
            }
        }
        stage('Push Image') {
            steps {
                script {
			        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
			        	app.push("${BUILD_NUMBER}")
			            app.push("latest")
			        }
                }
            }
        }
    }
}