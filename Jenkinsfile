pipeline{
    agent{
        label "ansible-agent"
    }
    stages{
        stage("run ping module"){
            
            stage{ 
                steps{
                    sh 'ansible -m ping'
                }                
            }
            }
            }
}
            