  pipeline {
      agent any

      stages {
          stage('Checkout') {
              steps {
                  echo 'Code checked out from GitHub!'
              }
          }

          stage('List Files') {
              steps {
                  sh 'ls -la'
              }
          }

          stage('Run Script') {
              steps {
                  sh 'chmod +x greet.sh'
                  sh './greet.sh'
              }
          }
      }

      post {
          success {
              echo 'Pipeline finished successfully!'
          }
          failure {
              echo 'Something went wrong.'
          }
      }
  }
