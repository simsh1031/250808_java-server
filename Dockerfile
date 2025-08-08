## Maven 빌드 단계
#FROM maven:3.10.3-eclipse-temurin-17 AS build
#WORKDIR /app
#COPY pom.xml .
#RUN mvn -B dependency:go-offline
#COPY src ./src
#RUN mvn -B package -DskipTests
#
## Tomcat 런타임 단계
#FROM tomcat:10.1.44-jdk17-temurin
#ENV TZ=Asia/Seoul
#EXPOSE 8080
#COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
#CMD ["catalina.sh", "run"]

# Maven 빌드 스테이지
FROM maven:3.8.5-openjdk-17 AS builder

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Tomcat 배포 스테이지
FROM tomcat:10-jdk17-temurin

COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

