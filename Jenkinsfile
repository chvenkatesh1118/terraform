pipeline {
    agent any
    parameters {
            choice(
            name: 'terraformwork',
            choices: ['creat_infra', 'destroy_infra'],
            description: 'terraformwork')

    }
    stages {
     when {
           expression { params.terraformwork == 'creat_infra' }
                 }
        stage('Example') {
            steps {
               echo "creat_infra"
            }
        }


    when {
           expression { params.terraformwork == 'destroy_infra' }
                     }
           stage('Example') {
                steps {
                   echo "destroy_infra"
                }
            }

   }
 }