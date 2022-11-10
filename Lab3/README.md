# Lab3
The task of this lab is to create 2 docker containers, one contains wordpress and the other contains a mysql database.
The task is split into the following two parts:
- Part 1: Create a docker compose file, which uses a wordpress image and a mysql image. The goal is to set up a wordpress infrastructure.
- Part 2: Create two images from wordpress and mysql based on debian for a wordpress installation.

## Part 1
The first step was to create a basic structure for the compose file. Then I started creating the database by using the official mysql image, which was set to always restart. Following that, I set up the environment consisting of the database credentials as well as the database name. Finally, I linked the database to my host using a volume.

After finishing the database setup, the only thing left was to set up the wordpress container. I set the container to be depending on the mysql container and used the latest wordpress version. Following that, I linked the container port 80 to the physical port 8080. After that I set up the environment with the same credentials as the database has, while using the port 3306. Finally, I linked the wordpress container to the location of the compose file on the host system. This completes the compose file.

Now in order to deploy the compose file, the following command has to be executed. 
```
docker-compose up -d
```
Keep in mind that the downloaded files will be located in the same folder as the compose file is located. Now let's continue with part 2.

## Part 2
I used multiple differnet tutorials for creating my custom images, one of which being [this tutorial from the lecture](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-lamp-on-ubuntu-16-04). It took me a bit to understand what commands to use, because of my lack of experience.

In order to deploy the docker compose file, first the custom images have to be built. This can be done using the following command.
```
docker build -t <image_name> .
```
Keep in mind that the image file name has to be "dockerfile". Also make sure that the images are called "mysql" and "wordpress".

After you are done with building both custom images, you can run the docker compose file using the following command.
```
docker run -d -p <port_in>:<port_out> --name <container_name> -e MYSQL_ROOT_PASSWORD=<password> <image_name>
```
The ports used when creating the images were:
- Wordpress: 8080
- MySQL: 3306
