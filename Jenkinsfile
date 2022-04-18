node {
    checkout scm

    docker.withRegistry('https://10.60.1.202:5000',"docker") {
        

        def customImage = docker.build("hello-world")

        /* Push the container to the custom Registry */
        customImage.push()
    
    }
    
    sshagent(['k8s']) {
        sh "scp -o StrictHostKeyChecking=no flaskapp.yaml baseadmin@10.60.1.200:/home/baseadmin"
        sh "ssh baseadmin@10.60.1.200 kubectl create -f ."
        }
}
