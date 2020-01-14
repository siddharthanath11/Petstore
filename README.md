## Petstore

#### Multi stage Dockerfile

* Clone petstore repository. 
* Build the maven project.
* Maven artifactory is copied to other container.

### Procedure: 

Copy docker file into local mac or vm
then run the following command
`docker build -t petstore:v1` .

### Validation:
`docker run -it petstore:v1 sh`
