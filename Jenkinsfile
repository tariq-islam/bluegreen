node {
  stage 'build'
  openshiftBuild(buildConfig: 'bluegreen', showBuildLogs: 'true')
  
  stage 'deploy'
  openshiftDeploy(deploymentConfig: 'bluegreen')
}
