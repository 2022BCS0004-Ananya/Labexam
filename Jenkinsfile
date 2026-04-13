pipeline {
    agent any

    stages {

        stage('Setup Python') {
            steps {
                sh '''
                # Download Miniconda (portable Python)
                wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
                
                # Install locally (no root needed)
                bash miniconda.sh -b -p $HOME/miniconda
                
                # Activate environment
                export PATH="$HOME/miniconda/bin:$PATH"
                
                # Install libraries
                pip install pandas scikit-learn joblib
                '''
            }
        }

        stage('Train') {
            steps {
                sh '''
                export PATH="$HOME/miniconda/bin:$PATH"
                python train.py
                '''
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