FROM sonarqube:6.3-alpine

WORKDIR ${SONARQUBE_HOME}/extensions/plugins/
RUN rm -rf ${SONARQUBE_HOME}/extensions/plugins/
RUN wget https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-2.9.jar
RUN wget https://sonarsource.bintray.com/Distribution/sonar-java-plugin/sonar-java-plugin-4.2.jar
RUN wget https://github.com/SonarQubeCommunity/sonar-findbugs/releases/download/3.5.0/sonar-findbugs-plugin.jar
RUN wget https://github.com/SonarQubeCommunity/sonar-pmd/releases/download/2.6/sonar-pmd-plugin-2.6.jar
RUN wget https://github.com/checkstyle/sonar-checkstyle/releases/download/3.7/checkstyle-sonar-plugin-3.7.jar
RUN wget https://github.com/SonarSource/sonar-web/releases/download/2.5-RC1/sonar-web-plugin-2.5-RC1.jar
RUN wget https://github.com/SonarQubeCommunity/sonar-timeline/releases/download/sonar-timeline-plugin-1.5/sonar-timeline-plugin-1.5.jar

RUN addgroup -S sonar && adduser -S -s /sbin/nologin -g sonar sonar
RUN chown -R sonar:sonar ${SONARQUBE_HOME}

COPY init.sh /opt/init.sh
RUN chmod +x /opt/init.sh
RUN chown sonar:sonar /opt/init.sh

ENV TZ=Europe/Amsterdam

WORKDIR ${SONARQUBE_HOME}
ENTRYPOINT ["/opt/init.sh"]