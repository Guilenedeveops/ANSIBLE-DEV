pipeline{
    agent{
        label "ansible-agent"
    }
    stages{
        stage("run ping module"){
            
         steps{
                    sh 'ansible -m ping'
                }                
            }
            }
            
}
            