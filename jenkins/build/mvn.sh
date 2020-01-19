#!/bin/bash

# script to build jar file using maven image and docker

echo "**********************************************"
echo "************** Building JAR ******************"
echo "**********************************************"

WORKSPACE="/home/inderpal2406/jenkins/jenkins_home/workspace/java_maven_jenkins_pipeline"

docker run --name maven --rm -v $WORKSPACE/java_app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
