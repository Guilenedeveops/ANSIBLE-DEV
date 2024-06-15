pipeline{
    agent any        
    stages{
        stage('transfering files to jenkins'){
            steps{
                    sshPublisher(
                        publishers: [
                            sshPublisherDesc(
                                    configName: 'ansible-jenkins',
                                    transfers: [
                                    sshTransfer(
                                            cleanRemote: false,
                                            excludes: '',
                                            execCommand: 'ls',
                                            execTimeout: 120000,
                                            flatten: false,
                                            makeEmptyDirs: false,
                                            noDefaultExcludes: false,
                                            patternSeparator: '[, ]+',
                                            remoteDirectory: '',
                                            remoteDirectorySDF: false,
                                            removePrefix: '',
                                            sourceFiles: '**/*.yml,**/*.cfg')],
                                            usePromotionTimestamp: false,
                                            useWorkspaceInPromotion: false,
                                            verbose: false)])
            }
        }
        stage('send files to jefrog'){
            steps{
                sh ''' 
                    zip file160624.zip *
                    curl -uadmin:AP7bxAPKkWrSXTi9tv2SeCxA3Wn -T ymlfile160624.zip "http://3.90.82.145:8081/artifactory/ymlfile160624/ymlfile160624/" 
                    '''
                     
            }
        }

        
    }
}
      


