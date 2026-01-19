Apache Kafka

Connect to Kafka through another container in the compose network using `kafka:9092`.  
If you want to connect from the host machine, use `localhost:9094`.

This container includes 2 listeners and a controller, one listener is for internal docker network communication and the other is for host machine communication.
