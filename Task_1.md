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

* Read the nginx.conf configuration file inside the docker container with the exec command
![Part_2](screenshots/Part_2_1.png)
* Create a nginx.conf file on a local machine + Configure it on the /status path to return the nginx server status page
![Part_2](screenshots/Part_2_2.png)
* Copy the created nginx.conf file inside the docker image using the docker cp command + Restart nginx inside the docker image with exec
![Part_2](screenshots/Part_2_3.png)
* Check that localhost:80/status returns the nginx server status page
![Part_2](screenshots/Part_2_4.png)
* Export the container to a container.tar file with the export command
![Part_2](screenshots/Part_2_5.png)
* Stop the container
![Part_2](screenshots/Part_2_6.png)
* Delete the image with docker rmi [image_id|repository]without removing the container first
![Part_2](screenshots/Part_2_7.png)
* Delete stopped container
![Part_2](screenshots/Part_2_8.png)
* Import the container back using the `import` command
![Part_2](screenshots/Part_2_9.png)
* Run the imported container
![Part_2](screenshots/Part_2_10.png)
* Check that localhost:80/status returns the nginx server status page
![Part_2](screenshots/Part_2_11.png)

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
* docker image that: 
    1) builds mini server sources on FastCgi from Part 3
    2) runs it on port 8080
    3) copies inside the image written ./nginx/nginx.conf
    4) runs nginx.
![Part_4](screenshots/Part_4_1.png)
* Build the written docker image with docker build, specifying the name and tag
![Part_4](screenshots/Part_4_2.png)
* Check that everything is built correctly
![Part_4](screenshots/Part_4_3.png)
* Check that the page of the written mini server is available on localhost:80
![Part_4](screenshots/Part_4_6.png)
* Check that localhost:80/status now returns a page with nginx status
![Part_2](screenshots/Part_2_11.png)

## Part 5. Dockle
* Install dockle
![Part_5](screenshots/Part_5_1.png)
![Part_5](screenshots/Part_5_1_1.png)
* Check the image from the previous task with dockle [image_id|repository]
![Part_5](screenshots/Part_5_2.png)
* Fix the image so that there are no errors or warnings when checking with dockle
![Part_5](screenshots/Part_5_3.png)


## Part 6. Basic Docker Compose

* Install docker-compose
![Part_6](screenshots/Part_6_0.png)

* Write a docker-compose.yml file, using which:
    1) Start the docker container from Part 5 (it must work on local network, i.e., you don't need to use EXPOSE instruction and map ports to local machine)


    2) Start the docker container with nginx which will proxy all requests from port 8080 to port 81 of the first container 
![Part_6](screenshots/Part_6_1.png)
![Part_6](screenshots/Part_6_1_1.png)
* Build and run the project with the docker-compose build and docker-compose up commands
![Part_6](screenshots/Part_6_3.png)
![Part_6](screenshots/Part_6_3_1.png)
* Check that the browser returns the page you wrote on localhost:80 as before![Part_6](screenshots/Part_6_4.png)