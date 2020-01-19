pipeline {
    agent any

    environment {
	PASS = credentials('DOCKERHUB_PASSWORD')
    }
    
    stages {
        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh
                '''
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/test/mvn_test.sh mvn test'
            }
        }
        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}