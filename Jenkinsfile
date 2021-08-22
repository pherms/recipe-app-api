pipeline {
    agent { dockerfile true }
    environment {
        CI = 'true'
    }
    stages {
        stage('prepare') {
            steps {
                sh 'pip install docker-compose'
            }
        }
        stage('test') {
            steps {
                sh 'docker-compose run app sh -c "python manage.py test && flake8"'
            }
        }
    }
}