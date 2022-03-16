FROM maven:3.6.1-jdk-8-alpine AS package

RUN apk add --update \
    curl \
    jq

RUN mkdir -p /app
WORKDIR /app

COPY pom.xml  .
COPY healthcheck.sh     .
RUN mvn -e -B dependency:resolve

COPY src      ./src
RUN mvn package -DskipTests

WORKDIR /app/

ENTRYPOINT ["/bin/sh"]
CMD ["healthcheck.sh"]

FROM openjdk:8-jre-alpine

RUN mkdir -p /jar
WORKDIR /jar/

COPY --from=package /app/target/selenium-docker.jar         .
COPY --from=package /app/target/selenium-docker-tests.jar   .
COPY --from=package /app/target/libs                        ./libs
COPY testng.xml                                             .
COPY run.sh                                                 .

WORKDIR /jar/

ENV BROWSER=chrome
ENV HUB_HOST=hub
ENV MODULE=testng.xml

ENTRYPOINT ["/bin/sh"]
CMD ["run.sh"]

