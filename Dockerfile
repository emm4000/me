FROM gradle:8.10.2-jdk17 as build

WORKDIR /app

COPY gradle/ gradle/
COPY build.gradle.kts .
COPY settings.gradle.kts .
COPY src/ ./src/

RUN gradle build --no-daemon

FROM openjdk:17.0.1-jdk-slim

WORKDIR /app

COPY --from=build /app/build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]