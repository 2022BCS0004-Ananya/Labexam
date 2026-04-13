pipeline {
    agent any

    stages {

        stage('Setup') {
            steps {
                sh 'python3 -m pip install pandas scikit-learn joblib --break-system-packages'
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