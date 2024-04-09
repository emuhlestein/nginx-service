pipeline { /* declarative pipeline */
    // agent { label "windows" }
    // more relevant for Jenkins cluster, where there are windows and/or linux nodes
    agent any // where to build, run on next available agent
//     environment {
//         DOCKER_BUILDKIT=0
//         COMPOSE_DOCKER_CLI_BUILD=0
//     }
    stages {
//         stage("Pre Build") {
//             steps {
//                 bat 'docker --version'
//                 bat 'cd'
//             }
//         }
        stage("build nginx docker image") {
            steps {
                // example
                // bat for windows, sh for linux
                // bat 'npm install'
                // bat 'npm build'
                // nginx-web-server is the docker context
                echo 'Building the application'
                script {
                    bat 'docker build --platform linux/arm/v7 -t nginx-server2 -f nginx-web-server/Dockerfile .'
                }
            }
        }
//         stage("test") {
//             steps {
//                 echo 'Testing the application'
//             }
//         }
        stage("deploy nginx docker image") {
            steps {
                bat 'docker save -o /tmp/nginx-server2.tar nginx-server2'
                bat 'scp /tmp/nginx-server2.tar edm@192.168.1.101:/home/edm/webserver'
//                 bat 'echo deploy > /tmp/deploy2server'
//                 bat 'scp nginx-web-server/Dockerfile edm@192.168.1.101:/home/edm/webserver'
            }
        }
    }
}

// node { /* This is a scripted pipeline (groovy) */
//     def app /* define a variable */
//
//     stage ('Clone repository') {
//         /* clone the repo into the workspace */
//         /* scm is a special variable which instructs the checkout step to clone the specific repo. */
//         checkout scm
//     }
//
//     stage ('Build image') {
//         /* build the docker image */
// //         app = docker.build("nginx-server", "nginx-web-server")
//         bat "echo show current directory"
//         bat "cd"
//         bat "docker build -t nginx-server2 ."
//     }
//
//     stage ('Test image') {
//         echo "Tests passed"
//         bat 'echo %PATH%'
//     }
// }