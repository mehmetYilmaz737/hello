node {
    checkout scm

    docker.withRegistry('https://10.60.1.202:5000') {

        def customImage = docker.build("hello-world:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
    
    }
    
    sshagent(['k8s']) {
        sh "scp -o StrictHostKeyChecking=no flaskapp.yaml baseadmin@10.60.1.200:/home/baseadmin"
        sh "ssh baseadmin@10.60.1.200 kubectl create -f ."
        }
}
