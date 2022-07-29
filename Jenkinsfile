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
                sh ("terraform init");
            }
        }
		stage('Terraform Action'){
            steps{
			echo"terraform action from the parameter is --> ${action}"
                sh ("terraform ${action} --auto-approve");
            }
        }
		
         stage('Terraform apply'){
            steps{
                sh ("terraform apply --auto-approve");
            }
        }
    }
}
