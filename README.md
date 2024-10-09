
##   Docker Build instructions for python packaging. 

Clone the repository. 

```
git clone https://github.com/jayramr/package-build.git
cd package-build
```

Install docker from https://docs.docker.com/get-started/get-docker/

Replace app.py with the actual script. 

Build the docker image

```
docker build . -t telosearch_v1
```

To run the container

```
docker run --rm  telosearch_v1 app.py -h
```

Create an account in Docker hub ( https://hub.docker.com/) for uploading this build image. Then create a new repository


```
docker login -u <dockerhub-username>
docker tag <local-image-name>:tagname <dockerhub-username>/<repository-name>:tagname
docker push <dockerhub-username>/<repository-name>:tagname
```

Verify after uploading the docker image.

```
docker pull <dockerhub-username>/<repository-name>:tagname
```

## Conda based build instructions for python packaging.

Refer to bioconda/meta.yaml for the conda skeleton for this package. 
As of now we would require to upload the python program and then create a versioned release v1.0

