pipeline{
    agent{
        label 'ansible-agent'
    }
    stages{
        stage('run ping'){
            steps{
                sh 'ansible all -m ping'
            }
        }
    }
}
      