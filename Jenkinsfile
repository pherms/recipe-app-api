pipeline {
    agent { Dockerfile 'true' }
    environment {
        CI = 'true'
    }
    stages {
        stage('prepare') {
            sh 'pip install docker-compose'

        }
        stage('test') {
            sh 'docker-compose run app sh -c "python manage.py test && flake8"'
        }
    }
}