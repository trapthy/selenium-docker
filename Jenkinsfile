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
    branchname = "env.BRANCH_NAME"

    }
	
    stages {

	stage('echo stage') {
            steps {
		
                sh 'echo $branchname'
		     if (env.BRANCH_NAME != 'master' && env.BRANCH_NAME != 'staging') {
        echo 'This is not master or staging'
            }
        }
	}
        stage('Build Jars') {
		
		when {
         		branch 'dev'
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
