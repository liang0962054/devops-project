FROM maven:3.9.9-eclipse-temurin-21-jammy as MAVEN_BUILD
RUN git clone -b containers https://github.com/hkhcoder/vprofile-project.git
RUN cd vprofile-project && mvn install

FROM tomcat:10-jdk21
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=MAVEN_BUILD vprofile-project/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD [ "catalina.sh", "run" ]