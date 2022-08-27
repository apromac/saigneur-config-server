# ======================================================================
# DOCKERFILE
# CONSTRUCTION DE L'IMAGE DOCKER DU MICROSERVICE "saigneur-config-server"
# ======================================================================
FROM openjdk:11-alpine
LABEL maintainer = "apromac <abraham.tiene@apromac.ci>"

RUN mkdir /usr/local/microservice
WORKDIR /usr/local/microservice
COPY target/*.jar saigneur-config-server.jar

EXPOSE 9101
ENTRYPOINT ["java", "-jar", "saigneur-config-server.jar"]
