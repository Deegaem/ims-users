#!/bin/sh
mvn clean package && docker build -t org.digam/ims-users .
docker run -p 8081:8080 --name ims-users org.digam/ims-users