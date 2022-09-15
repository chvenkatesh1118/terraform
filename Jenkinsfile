pipeline {
agent any
      environment {
         SERVICE = 'true'
//           DB_ENGINE    = 'sqlite'
      }
  parameters { choice(name: 'task',
                      choices: ['create',
                                 'destroy'],
                      description: '') }

  stages{
   stage('create ${SERVICE}'){
    when {
                   expression {
                      return params.task == 'create'
                   }
               }
      steps{
      sh 'cd infra/${SERVICE}; terraform init'
      sh 'cd infra/${SERVICE}; terraform plan'
      sh 'cd infra/${SERVICE}; terraform apply -auto-approve'
      
      }
    }

    stage('destroy ${SERVICE}'){
        when {
                       expression {
                          return params.task == 'destroy'
                       }
                   }
          steps{

          sh 'cd infra/${SERVICE}; terraform destroy -auto-approve'

          }
        }

  }
}
