pipeline {
    // agent { dockerfile true }
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('test') {
            steps {
                dir('app') {
                    sh 'docker-compose run app sh -c "python manage.py test && flake8"'
                }
            }
        }
    }
}