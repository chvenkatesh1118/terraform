// pipeline {
// agent any
// //       environment {
// //          SERVICE = 'ec2'
// //
// //       }
//  parameters { choice(name: 'service',
//                        choices: ['ec2',
//                                   'ecr'],
//                        description: 'service')
//               choice(name: 'task',
//                       choices: ['create',
//                                  'destroy'],
//                       description: 'task') }
//
// //          environment {
// //                   SERVICE = ${}
// //
// //                }
//
//
//   stages{
//    stage('create ECC2 '){
//
//    when {
//                           expression {
//                              return params.service == 'ec2'
//                              return params.task == 'create'
//                           }
//                       }
//
//       steps{
//       sh 'cd infra/ec2; terraform init'
//       sh 'cd infra/ec2; terraform plan'
//       sh 'cd infra/ec2; terraform apply -auto-approve'
//
//       }
//     }
//
//     stage('destroy ec2'){
//         when {
//                        expression {
//                           return params.service == 'ec2'
//                           return params.task == 'destroy'
//                        }
//                    }
//           steps{
//
//           sh 'cd infra/ec2; terraform destroy -auto-approve'
//
//           }
//         }
//
//       //////////////////////////////////////////////////////
//     stage('create ecr '){
//
//       when {
//                              expression {
//                                 return params.service == 'ecr'
//                                 return params.task == 'create'
//                              }
//                          }
//
//          steps{
//          sh 'cd infra/ecr; terraform init'
//          sh 'cd infra/ecr; terraform plan'
//          sh 'cd infra/ecr; terraform apply -auto-approve'
//
//          }
//        }
//
//        stage('destroy ecr'){
//            when {
//                           expression {
//                              return params.service == 'ecr'
//                              return params.task == 'destroy'
//                           }
//                       }
//              steps{
//
//              sh 'cd infra/ecr; terraform destroy'
//
//              }
//            }
//   }
// }
 pipeline {
  agent any
 }
  stages {
   stage(craete ec2) {
    setep {
     sh 'cd terraform/infra/ec2'
     sh 'terraform init'
     sh 'terraform plan'
     sh 'terraform apply'
     }

   }

  }