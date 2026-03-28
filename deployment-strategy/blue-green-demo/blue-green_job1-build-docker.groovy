pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps{
                checkout([
                    $class: 'GitSCM', 
                    branches: [[name: 'refs/tags/${VERSION}']], 
                    doGenerateSubmoduleConfigurations: false, 
                    extensions: [], 
                    submoduleCfg: [], 
                    userRemoteConfigs: [[url: 'git@github.com:minh21012005/nodejs-random-color.git', credentialsId: 'github-key-24-03-2026']]
                ])
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t nodejs-random-color:${VERSION} .'
            }
        }
        stage('Upload image to ECR') {
            steps {
                sh 'aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 183047400460.dkr.ecr.ap-southeast-1.amazonaws.com'
                sh 'docker tag nodejs-random-color:${VERSION} 183047400460.dkr.ecr.ap-southeast-1.amazonaws.com/nodejs-random-color:${VERSION}'
                sh 'docker push 183047400460.dkr.ecr.ap-southeast-1.amazonaws.com/nodejs-random-color:${VERSION}'
            }
        }
    }
}
