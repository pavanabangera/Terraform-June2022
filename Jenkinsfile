pipeline{
    agent any
    tools {
       terraform 'terraform-11'
    }
    stages{
        stage('Terraform init') {
            steps{
                sh label: '', script: 'terraform init'
            }
        }
         stage('Terraform apply') {
            steps{
                sh label: '', script: 'terraform apply --auto-approve'
            }
        }
    }
}
