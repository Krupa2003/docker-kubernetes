# Use an official Tomcat base image
FROM tomcat:9.0.50-jdk11-openjdk

# Set environment variables
ENV JAVA_OPTS="-Xmx1024m"

# Copy your application JAR or WAR file into the Tomcat webapps directory
COPY target/docker-java-sample-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
