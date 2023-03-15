FROM eclipse-temurin
WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src

EXPOSE 8080
CMD ["./mvnw", "spring-boot:run"]
