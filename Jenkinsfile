pipeline {
    agent {
        label {
          label "gp-agent"
      }
     }
	// tools { 
 //      		maven 'MAVEN_HOME' 
      		
 //    	}

environment {
    // get branch name
    branch = "${env.BRANCH_NAME.split("/")[1]}"

    }
	
    stages {

	stage('echo stage') {
            steps {
		
                sh 'echo $branch'
		
		     
        }
	}
        stage('Build Jars') {
		
		when {
         		branch 'dev'
     	 	     }
            steps {
		sh 'echo hello'
               // sh 'mvn clean package -DskipTests'
            }
        }


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
