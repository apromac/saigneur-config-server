pipeline {
    agent any
    tools {
        maven "Maven391"
    }
    environment {
        DOCKER_IMAGE_NAME = "saigneur-config-server"
        CONTAINER_NAME = "msaigneur-config-server"
        USERNAME = 'apromac'
        PASSWORD = '@pr0m@c123'
    }

    stages {
        stage('Clean package') {
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

        stage('Docker hub') {
            steps {
                echo '--------------------< Connexion au docker hub >--------------------'
                sh 'docker login --username ${USERNAME} --password ${PASSWORD}'
            }
        }
    }
}

