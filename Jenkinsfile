pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Construir la imagen Docker a partir del Dockerfile en el directorio actual
                    def customImage = docker.build('nginx-alphine:andherson', '.')
                }
            }
        }

        stage('Ejecutar Docker Compose') {
            steps {
                script {
                    // Ejecutar docker-compose up en la misma ruta del Jenkinsfile
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}
