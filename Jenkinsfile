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
              sh "docker build -t nareshbandari/hellospring:${BUILD_NUMBER} ."
              sh "docker  push nareshbandari/hellospring:${BUILD_NUMBER}"
            }}
        stage('Deploy to k8s'){
            steps{
                script{
                    kubernetesDeploy (configs: 'deploysvc.yaml',kubeconfigId: 'k8sconfigpwd')
                }
            }
        }
  }
}
