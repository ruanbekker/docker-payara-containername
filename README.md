# docker-payara-containername
Web Service with Java and Payara Micro on Docker

## About

Using [Payara Micro](https://www.payara.fish/payara_micro) and Netbeans to create JSP Pages. The [example war](https://dl.dropboxusercontent.com/u/31991539/repo/java/war/print-container-name/hello.war) file prints the container name (hostname)

## Running the Web Service on Docker:

Build the Image and run a Container:

```
$ git clone https://github.com/ruanbekker/docker-payara-containername
$ docker build -t payara-containername .
<<<<<<< HEAD
$ docker run -itd --name payara-containername --publish 80:8080 payara-containername 
=======
$ docker run -itd --name payara-containername --publish 80:8080 payara-containername
>>>>>>> 40f1d3dd46147ed39c78469a018b68b08cea9651
```

Test the Web Service:

```
$ curl http://127.0.0.1/hello/
<!DOCTYPE html>
<html>
..
            Hello World!
   Test Page with Docker + Payara Micro</h3>

   Serving From ContainerId: d24f8cd982fc
..
</html>
```

## Create the Service on Docker Swarm with Private Registry:

```
$ docker build -t registry.gitlab.com/<user>/<repo>/payara:containername .
$ docker push registry.gitlab.com/<user>/<repo>/payara:containername

$ docker service create \
--name java-web \
--replicas 3 \
--publish 80:8080 \
--network mynet \
--with-registry-auth registry.gitlab.com/<user>/<repo>/payara:containername
```

## Or Use the Docker Hub Image:

```
$ docker service create \
--name java-web \
--replicas 3 \
--publish 8080:8080 \
rbekker87/payara-containername
```

## Resources:
- https://github.com/payara/docker-payaramicro
- https://hub.docker.com/r/payara/micro/
- https://javapointers.com/tutorial/create-web-application-using-maven-and-netbeans/
- https://netbeans.org/kb/docs/web/mysql-webapp.html#welcomePage
- http://blog.arungupta.me/9-docker-recipes-javaee-applications-techtip80/
