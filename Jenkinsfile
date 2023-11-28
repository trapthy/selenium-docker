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
    // get branch name
    branchname = "env.GIT_BRANCH"

    }
	
    stages {

	stage('echo stage') {
            steps {
		
                sh 'echo $branchname'
		
		     
        }
	}
        stage('Build Jars') {
		
		when {
         		branch 'origin/dev'
     	 	     }
            steps {
		
                sh 'mvn clean package -DskipTests'
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
