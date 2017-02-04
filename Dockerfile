FROM sonarqube:5.6.1-alpine

COPY /language-plugins/sonar-java-plugin-4.2.jar /opt/sonarqube/extensions/plugins
COPY /language-plugins/sonar-javascript-plugin-2.15.jar /opt/sonarqube/extensions/plugins

ENV TZ=Europe/Amsterdam
