pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Srikruthi-M/docker-lab-app.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t kruthim/student-app:1.0 .'
            }
        }

        stage('Show Docker Images') {
            steps {
                sh 'docker images'
            }
        }
    }

    post {
        always {
            echo "Pipeline Finished"
        }
        success {
            echo "Build Successful!"
        }
        failure {
            echo "Build Failed!"
        }
    }
}
