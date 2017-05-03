#!/bin/bash

oc project app-dev
oc delete all --all
oc project app-qa
oc delete all --all
oc project app-prod
oc delete all --all
oc delete project app-dev app-qa app-prod
