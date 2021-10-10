pipeline {
  agent {
    docker {
      image 'maven:3.8.1-adoptopenjdk-8'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'mvn -DskipTests clean package'
      }
    }

    stage('publish') {
      steps {
            script {
                docker.withRegistry('463405933313.dkr.ecr.ap-south-1.amazonaws.com','ecr:ap-south-1:jenkins_aws') {
                    def myImage=docker.build('springboot-hw')
                    myImage.push('463405933313.dkr.ecr.ap-south-1.amazonaws.com/springboot-hw:latest')
                }
            }
        }
      }

    }
  }