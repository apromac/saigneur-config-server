pipeline {
    agent any
    tools {
        maven "Maven386"
        //jdk "openJDK11"
    }

    stages {
        stage('Initialize') {
            steps {
                echo "M2_HOME = /usr/local/maven386"
            }
        }

        stage('Build') {
            steps {
                dir("/var/lib/jenkins/workspace/saigneur-config-server-pipeline") {
                    sh 'mvn -B -DskipTests clean package'
                }
            }
            post {
                success {
                    // we only worry about archiving the jar file if the build steps are successful
                    archiveArtifacts(artifacts: '**/target/*.jar', allowEmptyArchive: true)
                }
            }
        }
    }
}

// pipeline {
//     agent any
//     environment {
//         DOCKER_IMAGE_NAME = "saigneur-config-server"
//         BUILD_TAG = "v1.0.${BUILD_NUMBER}"
//         CONTAINER_NAME = "msaigneur-config-server"
//         CONTAINER_PORT = 9101
//         IMAGE_DEFAULT_DIR = "/usr/local/microservice/msaigneur"
//         VOLUME_NAME = "postgres_data"
//     }
//     stages {
//         stage('Build') {
//             steps {
//                 echo 'Compilation du code source ...'
//                 sh '/usr/local/maven386/bin/mvn -version'
//                 sh '/usr/local/maven386/bin/mvn clean package -DskipTests'
//             }
//             post {
//                 success {
//                     // we only worry about archiving the jar file if the build steps are successful
//                     archiveArtifacts(artifacts: '**/target/*.jar', allowEmptyArchive: true)
//                 }
//             }
//         }
//
//         stage("Build and start container") {
//             steps {
//                 sh "docker compose build"
//                 sh "docker compose up -d"
//                 sh "docker ps"
//             }
//         }
//     }
// }
