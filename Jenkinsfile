pipeline{
    agent any
    tools {
       terraform 'terraform-11'
    }
    stages{
	      stage('git checkout'){
            steps{
			git branch: 'main', url: 'https://github.com/pavanabangera/Terraform-June2022.git'
            }
			}
        stage('Terraform init'){
            steps{
                sh label: '', script: 'terraform init'
            }
        }
         stage('Terraform apply'){
            steps{
                sh label: '', script: 'terraform apply --auto-approve'
            }
        }
    }
}
