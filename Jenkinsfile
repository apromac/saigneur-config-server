pipeline {
    agent any
    tools {
        maven "Maven391"
    }
    environment {
        DOCKER_IMAGE_NAME = "saigneur-config-server"
        CONTAINER_NAME = "msaigneur-config-server"
    }

    stages {
        stage('Build') {
            steps {
                echo '--------------------< Compilation du code source >--------------------'
                sh 'mvn -B -DskipTests clean package'
            }
        }

        stage('Build and start container') {
            steps {
                echo '--------------------< Compilation du docker-compose >--------------------'
                sh 'docker compose build'

                echo '--------------------< Lancement du docker-compose (containers) >--------------------'
                sh 'docker compose up -d'

                echo '--------------------< Affichage des containers actifs >--------------------'
                sh 'docker ps'
            }
        }
    }
}

