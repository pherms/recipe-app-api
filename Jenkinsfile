pipeline {
    agent { dockerfile true }
    environment {
        CI = 'true'
    }
    stages {
        stage('test') {
            steps {
                sh 'docker-compose run app sh -c "python manage.py test && flake8"'
            }
        }
    }
}