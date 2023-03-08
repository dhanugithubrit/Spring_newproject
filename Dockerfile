FROM adoptopenjdk/openjdk11
RUN mkdir project2
RUN chmod 777 project2
WORKDIR project2
COPY target/spring-boot-2-jdbc-with-h2-*.jar project.jar
COPY src/main/resources/application.properties app.properties
EXPOSE 8080/tcp
CMD ["JAVA","-jar","project.jar","-Server","app.properties"]