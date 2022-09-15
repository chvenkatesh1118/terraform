pipeline {
agent any
  parameters { choice(name: 'task',
                      choices: ['create',
                                 'destroy'],
                      description: '') }

  stages{
   stage('create infra'){
    when {
                   expression {
                      return params.task == 'create'
                   }
               }
      steps{
      sh 'cd infra/ec2; terraform init'
      sh 'cd infra/ec2; terraform plan'
      sh 'cd infra/ec2; terraform apply -auto-approve'
      
      }
    }

    stage('destroy infra'){
        when {
                       expression {
                          return params.task == 'destroy'
                       }
                   }
          steps{

          sh 'cd infra/ec2; terraform destroy -auto-approve'

          }
        }

  }
}
