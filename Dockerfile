FROM openjdk:alphine

WORKDIR /srv

COPY    . .

RUN     ./gradlew test build

ENTRYPOINT ["java"]

CMD ["-jar", "build/libs/hello-forge-springboot-0.0.1-SNAPSHOT.jar"]

