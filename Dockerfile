FROM schoolofdevops/carts-maven

WORKDIR /opt/carts

COPY . .
 
RUN mvn package

RUN mv target/carts.jar /run && rm -rf *

EXPOSE 80

CMD java -jar /run/carts.jar --port=80