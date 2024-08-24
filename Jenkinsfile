pipeline {
    agent {
        node {
            label 'maven'
        }
    }
environment{
    PATH = "/opt/apache-maven-3.9.9/bin:$PATH"
}

    stages {
        stage('build') {
            steps {
                sh 'mvn clean deploy'
            }
        }
    }
}
def imageName = 'valaxy01.jfrog.io/valaxy-docker/ttrend'
def version   = '2.1.2'
stage(" Docker Build ") {
  steps {
    script {
       echo '<---------------yes Docker Build Started --------------->'
       app = docker.build(imageName+":"+version)
       echo '<--------------- Docker Build Ends --------------->'
    }
  }
}
