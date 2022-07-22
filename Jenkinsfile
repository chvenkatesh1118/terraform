pipeline {
    agent any
    parameters {
            choice(
            name: 'terraformwork',
            choices: ['creat_infra', 'destroy_infra'],
            description: 'terraformwork')

    }


    stages {

    stage(creat){
        when {
              expression { params.terraformwork == 'creat_infra' }
                   }
            steps {
            echo "creating_infra"
            sh 'cd project/ecs'
            sh 'terraform init'
            sh 'terraform plan'
            sh 'terraform apply -auto-approve'
            }
            }
        stage(destroy) {

         when {
               expression { params.terraformwork == 'destroy_infra' }
                }
              steps{
              echo "destroying_infra"
              sh ''
              sh 'cd project/ecs && terraform destroy -auto-approve'
              }
            }
       }

}
