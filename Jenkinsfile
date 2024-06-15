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
    }
}
      


