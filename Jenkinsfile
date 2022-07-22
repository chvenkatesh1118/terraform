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
    stage(creat){
            steps {
            echo "creat_infra"
            }
       }
    }
}
