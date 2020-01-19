#!/bin/bash

# script to test using maven image and docker

echo "**********************************************"
echo "*************** Testing **********************"
echo "**********************************************"

WORKSPACE="/home/inderpal2406/jenkins/jenkins_home/workspace/java_maven_jenkins_pipeline"

docker run --name maven_test --rm -v $WORKSPACE/java_app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
