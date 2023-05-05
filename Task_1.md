## Part 1. Ready-made docker
* Take the official docker image from nginx and download it using docker pull.
![Part_1](screenshots/Part_1_1.png)
* Run docker image with docker run -d [image_id|repository]
![Part_1](screenshots/Part_1_2_1.png)
![Part_1](screenshots/Part_1_2_2.png)
* Check that the image is running with docker ps
![Part_1](screenshots/Part_1_3.png)
* View container information with docker inspect [container_id|container_name]
![Part_1](screenshots/Part_1_4.png)
* From the command output define and write in the report the container size, list of mapped ports and container ip
![Part_1](screenshots/Part_1_5_1.png)
![Part_1](screenshots/Part_1_5_2.png)
![Part_1](screenshots/Part_1_5_3.png)
* Stop docker image with docker stop [container_id|container_name]
![Part_1](screenshots/Part_1_6.png)
* Check that the image has stopped with docker ps
![Part_1](screenshots/Part_1_7.png)
* Run docker with mapped ports 80 and 443 on the local machine with run command
![Part_1](screenshots/Part_1_8.png)
* Check that the nginx start page is available in the browser at localhost:80
![Part_1](screenshots/Part_1_9_1.png)
![Part_1](screenshots/Part_1_9_2.png)
* Restart docker container with docker restart [container_id|container_name]
![Part_1](screenshots/Part_1_10.png)
* Check in any way that the container is running
![Part_1](screenshots/Part_1_11.png)

## Part 2. Operations with container



## Part 3. Mini web server
### Aim: Write a mini server in C and FastCgi that will return a simple page saying Hello World!

* Run container based on nginx image. Name of the container - `server`
![Part_3](screenshots/Part_3_1.png)
* Make worling directory `server` and update apt-get inside the container
![Part_3](screenshots/Part_3_2.png)
* Install spawn-fcgi and libfcgi-dev
![Part_3](screenshots/Part_3_3.png)
* Copying main.c and nginx.conf into out container
![Part_3](screenshots/Part_3_4.png)
* Compile main.c
![Part_3](screenshots/Part_3_5.png)
* Reload nginx
![Part_3](screenshots/Part_3_6.png)
* ???
![Part_3](screenshots/Part_3_7.png)
* Check localhost
![Part_3](screenshots/Part_3_8.png)

## Part 4. Your own docker