pipeline {
  agent {
    docker {
      image 'maven:3.8.1-adoptopenjdk-8'
      args 'apt-get update'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
        sh 'docker build -t springboot-hw .'
      }
    }

  }
}