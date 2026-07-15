# Use Java 17 runtime
FROM tomcat:10.1-jdk17-temurin

# Remove the default application
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file
COPY target/MavenWebAppOne.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
