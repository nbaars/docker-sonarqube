#!/bin/sh

chown -R sonar:sonar ${SONARQUBE_HOME}/data
su -s /bin/sh sonar -c "nohup ${SONARQUBE_HOME}/bin/run.sh > /tmp/sonar.log 2>&1"