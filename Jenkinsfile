pipeline {
      agent any

      stages {
          stage('Checkout') {
              steps {
                  echo 'Code checked out from GitHub!'
              }
          }

          stage('Run Script') {
              steps {
                  sh 'chmod +x greet.sh'
                  sh './greet.sh'
              }
          }

          stage('Run Tests') {
              steps {
                  sh 'chmod +x test.sh'
                  sh './test.sh'
              }
          }
      }

      post {
          success {
              echo 'All stages passed!'
          }
          failure {
              echo 'Build failed — check the test output above.'
          }
      }
  }
