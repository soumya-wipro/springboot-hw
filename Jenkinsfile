pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
        sh 'docker build -t springboot-hw .'
      }
    }

  }
}