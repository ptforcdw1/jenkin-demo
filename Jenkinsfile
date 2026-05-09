  pipeline {
      agent any

      stages {
          stage('Checkout') {
              steps {
                  echo 'Code has been checked out from GitHub!'
              }
          }

          stage('List Files') {
              steps {
                  sh 'ls -la'
              }
          }

          stage('Print Message') {
              steps {
                  echo "Hello from Jenkins! Build number: ${env.BUILD_NUMBER}"
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
