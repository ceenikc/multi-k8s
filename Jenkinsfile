pipeline {
  agent any

  environment {
    DOCKER_USERNAME = credentials("DOCKER_USERNAME")
    DOCKER_PASSWORD = credentials("DOCKER_PASSWORD")
  }

  stages {

    stage('Test') {
      steps {
        // sh 'echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin'
        sh 'echo "$DOCKER_USERNAME"'
      }
    }
  }
}
