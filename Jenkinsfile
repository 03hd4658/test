pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }

    stages{
        stage ('terraform init and apply for Dev'){
            steps{
                sh "sh returnStatus: true, script: 'terraform workspace new dev'"
                sh "terraform init"
                sh "terraform apply --auto-approve"
            }
        }

        stage ('terraform init and apply for Prod'){
            steps{
                sh "sh returnStatus: true, script: 'terraform workspace new prod'"
                sh "terraform init"
                sh "terraform apply --auto-approve"
            }
        }
    }
}

def getTerraformPath(){
    def tfhome = tool name: 'terraform-machine', type: 'terraform'
    return tfhome
}
