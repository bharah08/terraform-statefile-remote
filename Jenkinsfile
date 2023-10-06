pipeline {
  agent any 
  stages {
    stage ('checkout') {
      steps {
checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/bharah08/terraform-statefile-remote.git']])
      }
    }
     stage ('terraform-init') {
      steps {
sh 'terraform init'
      }
    }
      stage ('terraform-plan') {
      steps {
sh 'terraform plan'
      }
    }
    
      stage ('terraform-apply') {
        
      steps {
sh 'terraform apply --auto-approve'
      }
    }
  }
}
