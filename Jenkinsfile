pipeline {
    agent any
    parameters {
            choice(
            name: 'terraformwork',
            choices: ['creat_infra', 'destroy_infra'],
            description: 'terraformwork')

    }
     when {
           expression { params.terraformwork == 'creat_infra' }
                 }
    stages {
        stage('Example') {
            steps {
               echo "creat_infra"
            }
        }
    }

    when {
           expression { params.terraformwork == 'destroy_infra' }
                     }
        stages {
            stage('Example') {
                steps {
                   echo "destroy_infra"
                }
            }
        }
}
//  stages {
//    stage('vpc'){
//     steps{
//      sh'cd project/vpc'
//      sh'terraform init'
//      sh'terraform plan'
//      sh'terraform apply '
//
//     }
//    }
//  }
//
//    stage('vpc'){
//      steps{
//       sh'cd project/iam'
//       sh'terraform init'
//       sh'terraform plan'
//       sh'terraform apply '
//
//      }
//     }
//
//    stage('vpc'){
//      steps{
//       sh'cd project/ecr'
//       sh'terraform init'
//       sh'terraform plan'
//       sh'terraform apply '
//
//      }
//     }
//
//    stage('vpc'){
//      steps{
//       sh'cd project/ecs'
//       sh'terraform init'
//       sh'terraform plan'
//       sh'terraform apply '
//
//      }
//     }