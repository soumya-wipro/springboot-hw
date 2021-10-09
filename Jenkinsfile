pipeline {
  agent {
    docker {
      image 'maven:3.8.1-adoptopenjdk-8'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'sudo apt-get install -y docker'
        sh 'mvn -B -DskipTests clean package'
        sh 'docker build -t springboot-hw .'
      }
    }

  }
}