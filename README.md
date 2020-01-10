# mapproxy
grind af mapproxy

docker-compose dæmi:
--------------------------
version: "3.7"
services:
 
  mapproxy:
    build: mapproxy/.
    #restart: always
    ports: 
      - 8080:8080
    volumes: 
      - ./mapproxy/proxy:/proxy
-----------------------------      
   
