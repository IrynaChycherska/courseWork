pipeline {
    agent any

    environment {
        DEPLOY_SCRIPT = './deploy.sh'
    }

    stages {
        stage('Lint HTML') {
            steps {
                sh 'htmlhint index.html'
            }
        }

        stage('Lint JS') {
            steps {
                sh 'eslint script.js'
            }
        }

        stage('Deploy') {
            steps {
                sh "${DEPLOY_SCRIPT}"
            }
        }
    }
}
