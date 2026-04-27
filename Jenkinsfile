pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/E9Green/springboot-demo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Upload to Nexus') {
            steps {
                echo "Pretend pushing to Nexus (for lab purposes)"
            }
        }
    }
}
