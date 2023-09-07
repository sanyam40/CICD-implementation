FROM openjdk
WORKDIR /usr/src/app
COPY . /usr/src/app
ENTRYPOINT ["java","-jar","/Payment.jar"]
