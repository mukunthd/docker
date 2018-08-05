pipeline {
 agent any
     stages {
       stage ('checkout') {
          steps {
             checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '2b0c3b64-fe74-4138-b5a4-1f0f7cf2477b', url: 'https://github.com/mukunthd/docker-basics']]]
           }
       }
       stage ('DockerBuild') {
           steps {
            sh 'docker build -t mukunth .'
             }
      }
      stage ('DockerPush') {
           steps {
            sh 'docker tag mukunth mukunth/jenkins/mukunth:1.0.0'
            sh 'docker push mukunth/jenkins/mukunth:1.0.0'
          }
      }
  }
}
