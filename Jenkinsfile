pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }

    stages{
        stage ('terraform init and apply for Dev'){
            steps{
                sh "terraform init"
                sh "terraform plan"
                sh "terraform apply --auto-approve"
            }
        }        
    }
}

def getTerraformPath(){
    def tfhome = tool name: 'terraform-machine', type: 'terraform'
    return tfhome
}
