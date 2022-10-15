pipeline {
  agent any
  tools {
        docker "docker"
    }
  stages {
      stage('check out'){
            steps {
              git branch: 'master', credentialsId: 'githubnaresh', url: 'https://github.com/Nareshban/spring-boot-helloworld.git'
            }
      }
       stage('build docker'){
            steps {
              sh "docker build -t nareshbandari/hellospring:${BUILD_NUMBER}"
              sh "docker  push nareshbandari/hellospring:${BUILD_NUMBER}"
            }

       stage('Deploy in kube cluster'){
            steps {
              script{
                   withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u nareshban -p ${dockerhubpwd}'}
                   sh 'docker push nareshban/hellospring:${BUILD}'
                }
            }
      }
  }
}