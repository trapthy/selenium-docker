pipeline {
    agent {
        label {
          label "gp-agent"
      }
     }
	tools { 
      		maven 'MAVEN_HOME' 
      		
    	}
    stages {
        stage('Build Jars') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        // stage('Build Image') {
        //             steps {
        //                 bat 'docker build -t="suryajit7/selenium-docker" .'
        //             }
        //         }
        // stage('Push Image') {
        //     steps {
        //         script {
			     //    docker.withRegistry('https://registry.hub.docker.com', 'DockerHub') {
			     //    	app.push("${BUILD_NUMBER}")
			     //        app.push("latest")
			     //    }
        //         }
        //     }
        // }
    }
}
