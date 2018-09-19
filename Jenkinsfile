pipeline {
  agent any

  environment {
    DOCKER_USERNAME = credentials("DOCKER_USERNAME")
    DOCKER_PASSWORD = credentials("DOCKER_PASSWORD")
    GOOGLE_AUTH = credentials("google_auth")
  }

  stages {

    // stage('Test') {
    //   steps {
    //     sh 'echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin'
    //     sh 'docker build -t ceenikc/react-test -f ./client/Dockerfile.dev ./client'
    //     sh 'docker push ceenikc/react-test'
    //   }
    // }

    stage("Build") {
      agent {
        docker { image "google/cloud-sdk" }
      }
      steps {
        sh 'chmod +x ./test.sh'
        sh './test.sh'
      }
    }
  }
}
