
![Build Status](https://travis-ci.org/HEPData/hepdata-converter-ws-docker.svg?branch=master)

# hepdata-converter-ws-docker

*Build system for creating Docker image used to run hepdata-converter-ws*

This is a *companion repository* for the https://github.com/HEPData/hepdata-converter-ws repository.

This repository automates building Docker images with the help of Travis and then
pushing them to DockerHub. The docker image installs hepdata-converter-ws from pypi
and then runs the webservice (on its default port, 5000).

The basic workflow is as follows:

1. Modify Dockerfile (or any other files) (e.g. to fix the pypi version of hepdata-converter-ws)
2. Commit it to the repository
3. Push the code
4. Travis will create Docker image from Dockerfile and upload it to DockerHub

## For developers

Travis already has DockerHub credentials in its encrypted variables. If credentials are ever changed also
update secure variables in Travis build, otherwise the image will be created but not uploaded.

**Warning:** any build on master will trigger upload of the new image (regardless of the branch,
  so be cautious about it, especially if you plan to start breaking things)


**Run me**
```
docker pull hepdata/hepdata-converter-ws
docker run --restart=always -d --name=hepdata_converter -p 0.0.0.0:5500:5000 hepdata/hepdata-converter-ws hepdata-converter-ws

```
