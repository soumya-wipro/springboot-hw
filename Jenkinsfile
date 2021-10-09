pipeline {
  agent {
    docker {
      image 'maven:3.8.1-adoptopenjdk-8'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }

  }
}