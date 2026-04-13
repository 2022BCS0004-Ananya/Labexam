pipeline {
    agent {
        docker {
            image 'python:3.9'
        }
    }

    stages {

        stage('Setup') {
            steps {
                sh 'pip install pandas scikit-learn joblib'
            }
        }

        stage('Train') {
            steps {
                sh 'python train.py'
            }
        }

        stage('Identity') {
            steps {
                echo 'Student: Ananya Abhilash | Roll No: 2022BCS0004'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'model.pkl, metrics.json', fingerprint: true
            }
        }
    }
}