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

            when {
                       expression { params.terraformwork == 'creat_infra' }
                             }
               echo "creat_infra"

               when {
                          expression { params.terraformwork == 'destroy_infra' }
                                }

                                echo "destroy_infra"
            }



        }
}
}
