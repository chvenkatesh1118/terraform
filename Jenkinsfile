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
               echo "creat_infra"
            }
        }
}

    stage(destroy){
     when {
           expression { params.terraformwork == 'destroy_infra' }
                 }
            steps {
               echo "destroy_infra"
            }
        }
}

}

//     when {
//            expression { params.terraformwork == 'destroy_infra' }
//                      }
//            stage('Example') {
//                 steps {
//                    echo "destroy_infra"
//                 }
//             }
//
//    }
//  }