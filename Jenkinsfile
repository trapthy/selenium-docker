pipeline {
    agent {
        label {
          label "gp-agent"
      }
     }
	tools { 
      		maven 'MAVEN_HOME' 
      		
    	}

environment {
    
    branchname= env.GIT_BRANCH

    }
	
    stages {
        stage('Build Jars') {
            steps {
		echo "$branchname"
                sh 'mvn clean package -DskipTests'
            }
        }
// Testing stage simulation
        // //stage('Build Image') {
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
