FROM openjdk
EXPOSE 9091
ADD target/Payment.jar Payment.jar
ENTRYPOINT ["java","-jar","/Payment.jar"]
