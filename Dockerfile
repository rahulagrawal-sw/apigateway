FROM openjdk:11.0.6-slim
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} apigateway.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /apigateway.jar"]
#ENTRYPOINT ["java","-jar","/apigateway.jar"]