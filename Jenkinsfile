pipeline {
    agent any

    stages {

        stage('Setup') {
            steps {
                       sh '''
            apt-get update -y
            apt-get install -y python3 python3-pip
            python3 -m pip install pandas scikit-learn joblib
        '''
            }
        }

        stage('Train') {
            steps {
                sh 'python3 train.py'
            }
        }

        stage('Identity') {
            steps {
                echo 'Student: Ananya Abhilash | Roll No: 2022BCS0004'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'model.pkl,metrics.json', fingerprint: true
            }
        }
    }
}