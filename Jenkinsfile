pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Construir la imagen Docker a partir del Dockerfile en el directorio actual
                    def customImage = docker.build('andherson', '.')
                }
            }
        }

        stage('Ejecutar Contenedor') {
            steps {
                script {
                    // Ejecutar un contenedor basado en la imagen Docker construida
                    customImage.inside('-p 8080:80') {
                        // Agrega aquí cualquier comando o tarea que desees ejecutar dentro del contenedor
                    }
                }
            }
        }
    }
}
