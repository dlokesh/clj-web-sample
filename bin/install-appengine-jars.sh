#!/usr/bin/env bash

APP_ENGINE_VERSION="1.4.0"
APP_ENGINE_SDK_DIR="/Users/lokeshwaran/Work/utils/appengine-java-sdk-1.4.0"
APP_ENGINE_GROUP_ID="com.google.appengine"

mvn install:install-file -Dfile="$APP_ENGINE_SDK_DIR/lib/user/appengine-api-1.0-sdk-$APP_ENGINE_VERSION.jar" -DgroupId=$APP_ENGINE_GROUP_ID \
 -DartifactId=appengine-api-1.0-sdk -Dversion=$APP_ENGINE_VERSION -Dpackaging=jar -DgeneratePom=true

mvn install:install-file -Dfile="$APP_ENGINE_SDK_DIR/lib/user/appengine-api-labs-$APP_ENGINE_VERSION.jar" -DgroupId=$APP_ENGINE_GROUP_ID \
 -DartifactId=appengine-api-labs -Dversion=$APP_ENGINE_VERSION -Dpackaging=jar -DgeneratePom=true

mvn install:install-file -Dfile="$APP_ENGINE_SDK_DIR/lib/impl/appengine-api-stubs.jar" -DgroupId=$APP_ENGINE_GROUP_ID \
 -DartifactId=appengine-api-stubs -Dversion=$APP_ENGINE_VERSION -Dpackaging=jar -DgeneratePom=true

mvn install:install-file -Dfile="$APP_ENGINE_SDK_DIR/lib/impl/appengine-local-runtime.jar" -DgroupId=$APP_ENGINE_GROUP_ID \
 -DartifactId=appengine-local-runtime -Dversion=$APP_ENGINE_VERSION -Dpackaging=jar -DgeneratePom=true

mvn install:install-file -Dfile="$APP_ENGINE_SDK_DIR/lib/shared/appengine-local-runtime-shared.jar" -DgroupId=$APP_ENGINE_GROUP_ID \
 -DartifactId=appengine-local-runtime-shared -Dversion=$APP_ENGINE_VERSION -Dpackaging=jar -DgeneratePom=true

mvn install:install-file -Dfile="$APP_ENGINE_SDK_DIR/lib/testing/appengine-testing.jar" -DgroupId=$APP_ENGINE_GROUP_ID \
 -DartifactId=appengine-testing -Dversion=$APP_ENGINE_VERSION -Dpackaging=jar -DgeneratePom=true

