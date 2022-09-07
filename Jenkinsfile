pipeline{
    agent any 
    stages{
        stage('clone-stage'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'jenkinsgit', url: 'https://github.com/Team3-Group6-Engops/project9.git']]])
            }
        }
        stage('parallel-1'){
            parallel{
                stage('abayomi-parallel-stage'){
                    steps{
                     sh 'whoami'
                     echo "I am a Devops Engineer"
                    }
                }
                stage('abayomi-parallel2'){
                    steps{
                        echo "This is a parallel pipeline"
                        sh 'chmod +x yomi.sh'
                        sh 'bash -x yomi.sh'
                    }
                }
            }
        }
    }
}
