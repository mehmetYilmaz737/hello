node {
    checkout scm

    docker.withRegistry('https://10.60.1.202:5000') {

        def customImage = docker.build("hello-world:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
