#!/bin/bash

mkdir -p release/xd
./gradlew clean xdModule
./gradlew elasticSearchDeploy -PxdHome=release/xd/
./gradlew xdModuleDeploy -PxdHome=release/xd/

(cd release && tgz elasticsearch-sink.tgz xd/)
