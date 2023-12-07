pipeline {
   agent any

   triggers {
   pollSCM('* * * * *')
   }

    environment {
        VIRTUAL_ENV = "${WORKSPACE}/venv"
        PATH = "${VIRTUAL_ENV}/bin:${PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the repository
                script {
                    checkout scm
                }
            }
        }

        stage('Set Up Python Virtual Environment') {
            steps {
                script {
                    // Set up a Python virtual environment and install dependencies
                    sh "python3 -m venv ${VIRTUAL_ENV}"
                    sh "bash -c 'source ${VIRTUAL_ENV}/bin/activate && pip install -r requirements.txt'"
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    // Run your tests here
                    sh 'behave'
                    // Add Robot Framework, Appium, Selenium, and other test commands as needed
                }
            }
        }
    }

    post {
        always {
            // Clean up virtual environment
            script {
                sh 'deactivate || true'
                sh 'rm -rf ${VIRTUAL_ENV}'
            }
        }
    }
}
