pipeline {
    agent { dockerfile true }
    environment {
        CI = 'true'
    }
    stages {
        stage('test') {
            steps {
                sh 'python manage.py test && flake8'
            }
        }
    }
}