node {
  stage 'build and deploy'
  echo 'Building php application'
  sh "oc login https://192.168.122.124:8443 --insecure-skip-tls-verify -u openshift-dev -p devel"
  sh "oc new-project bluegreen-dev || oc project bluegreen-dev"
  sh "oc start-build bc/bluegreen"
}
