#/bin/bash
#cd base-serv
echo "===========admin===="
java -jar base-serv/admin-server/target/admin-server-0.0.1-SNAPSHOT.jar
echo "===========eureka===="
java -jar base-serv/eureka-server/target/eureka-server-0.0.1-SNAPSHOT.jar
echo "===========conf server===="
java -jar base-serv/conf-server/target/conf-server-0.0.1-SNAPSHOT.jar

cd ..


echo "======service====="

echo "======service:payment====="
java -jar payment-service/target/payment-service-0.0.1-SNAPSHOT.jar
echo "======service:order====="
java -jar order-service/target/order-service-0.0.1-SNAPSHOT.jar
echo "======service:product====="
java -jar product-service/target/product-service-0.0.1-SNAPSHOT.jar
echo "======service:account====="
java -jar account-sevice/target/account-sevice-0.0.1-SNAPSHOT.jar



echo "=========GUI======="

java -jar front-app/target/front-app-0.0.1-SNAPSHOT.jar



#spring.boot.admin.url=http://localhost:9002
#eureka.client.serviceUrl.defaultZone=http://localhost:9003/eureka/
#spring.zipkin.base-url=http://localhost:9001

eureka-server (258c843e)
http://10.0.0.119:9003