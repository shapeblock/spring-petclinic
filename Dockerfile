FROM fabric8/java-centos-openjdk8-jre

ENV JAVA_APP_JAR spring-petclinic-k8s-2.1.0.jar
ENV AB_OFF true

RUN mvnw package
RUN java -jar target/*.jar

EXPOSE 8080

ADD target/spring-petclinic-k8s-2.1.0.jar /deployments/
