pipeline {
  agent any

  stages {
      stage('Build Artifact') {
            steps {
              git branch: 'master',
                credentialsId: 'my_cred_id',
                url: 'ssh://git@test.com/proj/test_proj.git'
            }
            steps {
              sh "docker build -t nareshban/hellospring:${BUILD}"
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