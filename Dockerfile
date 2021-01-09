FROM adoptopenjdk:11-jre-openj9

LABEL maintainer piotr.gleska@student.put.poznan.pl

WORKDIR docker

RUN echo "hello from container"

COPY backup/pokemon-basic.jar ./pokemon-basic.jar

CMD ["java", "-jar", "pokemon-basic.jar"]
