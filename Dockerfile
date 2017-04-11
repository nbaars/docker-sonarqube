FROM sonarqube:6.3-alpine

COPY /language-plugins/sonar-java-plugin-4.8.0.9441.jar /opt/sonarqube/extensions/plugins
COPY /language-plugins/sonar-javascript-plugin-2.21.0.4409.jar /opt/sonarqube/extensions/plugins

ENV TZ=Europe/Amsterdam
