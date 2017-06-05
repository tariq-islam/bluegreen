node {
    stage 'Build image and deploy in Dev'
    echo 'Building docker image and deploying to Dev'
    buildApp('app-dev')

    stage 'Approve to QA'
    input 'Approve to QA?'

    stage 'Deploy to QA'
    echo 'Deploying to QA'
    deployApp('app-dev', 'app-qa')

    stage 'run integration testing'
    echo 'Running integration tests'
    sh 'sleep 30s'

    stage 'Approve to Production'
    input 'Approve to Production?'

    stage 'Deploy to Production'
    echo 'Deploying to Production'
    deployApp('app-dev', 'app-prod')
}

// Creates a Build and triggers it
def buildApp(String project){
    sh "oc login https://192.168.42.95:8443 --insecure-skip-tls-verify -u developer -p developer"
	sh "oc project ${project}"
    // sh "oc start-build bluegreen"
    openshiftBuild(buildConfig: 'bluegreen', showBuildLogs: 'true')
}

// Tag the ImageStream from an original project to force a deployment
def deployApp(String origProject, String project){
    sh "oc project ${project}"
    sh "oc policy add-role-to-user system:image-puller system:serviceaccount:${project}:default -n ${origProject}"
    sh "oc tag ${origProject}/bluegreen:latest ${project}/bluegreen:latest"
    // openshiftDeploy(deploymentConfig: 'bluegreen')
    sh "oc new-app ${project}/bluegreen:latest || oc rollout latest bluegreen"
}

