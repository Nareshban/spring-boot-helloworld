pipeline {
  agent any
  stages {
      stage('check out'){
            steps {
              git branch: 'master', credentialsId: 'githubnaresh', url: 'https://github.com/Nareshban/spring-boot-helloworld.git'
            }
      }
       stage('build docker'){
            steps {
              sh "docker build -t nareshban/hellospring:${BUILD_NUMBER}"
            }
//             steps {
//               script{
//                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
//                    sh 'docker login -u nareshban -p ${dockerhubpwd}'}
//                    sh 'docker push nareshban/hellospring:${BUILD}'
//                 }
//             }
      }
  }
}