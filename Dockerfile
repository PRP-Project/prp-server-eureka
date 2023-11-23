FROM openjdk:8

VOLUME /tmp

ARG JAR_FILE=build/libs/prp-server-eureka-1.0.1.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar","-Dspring-boot.run.arguments=--CONFIG_HOST=${CONFIG_HOST}, --CONFIG_PORT=${CONFIG_PORT}"]
