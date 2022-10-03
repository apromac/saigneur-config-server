# ======================================================================
# DOCKERFILE
# CONSTRUCTION DE L'IMAGE DOCKER DU MICROSERVICE "saigneur-config-server"
# ======================================================================
FROM adoptopenjdk/openjdk11:alpine
LABEL maintainer = "apromac <abraham.tiene@apromac.ci>"

RUN mkdir /usr/local/microservice \
&& mkdir /usr/local/microservice/msaigneur

WORKDIR /usr/local/microservice/msaigneur
COPY target/*.jar saigneur-config-server.jar

EXPOSE 9101
ENTRYPOINT ["java", "-jar", "saigneur-config-server.jar"]
