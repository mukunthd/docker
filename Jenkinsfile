node("docker") {
    docker.withRegistry('https://hub.docker.com/r/mukunth/', '2b0c3b64-fe74-4138-b5a4-1f0f7cf2477b') {
    
        git url: "https://github.com/mukunthd/docker-basics", credentialsId: '2b0c3b64-fe74-4138-b5a4-1f0f7cf2477b'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "mydockertest"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
