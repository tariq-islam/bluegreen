node {
  stage ('build') {
    openshiftBuild(buildConfig: 'bluegreen', showBuildLogs: 'true')
  }
  stage ('deploy') {
    // openshiftDeploy(deploymentConfig: 'bluegreen')
    sh "oc new-app bluegreen"
  }
}
