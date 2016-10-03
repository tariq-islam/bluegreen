node ('jenkins-jnlp') {
  stage 'build'
  openshiftBuild(buildConfig: 'bluegreen', showBildLogs: 'true')
  
  stage 'deploy'
  openshiftDeploy(deploymentConfig: 'bluegreen')
}
