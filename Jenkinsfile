pipeline {
    agent { dockerfile true }
    environment {
        CI = 'true'
    }
    stages {
        stage('test') {
            steps {
                dir('app') {
                    sh 'python manage.py test && flake8'
                }
            }
        }
    }
}