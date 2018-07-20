
![Build Status](https://travis-ci.org/HEPData/hepdata-converter-ws-docker.svg?branch=master)

# hepdata-converter-ws-docker

*Build system for creating Docker image used by Travis testing framework for hepdata-converter-ws*

This is a *companion repository* for the https://github.com/HEPData/hepdata-converter-ws repository
(it is also included there as a submodule in ```docker``` directory)

This repository has only one purpose, to separate Dockerfile from the main hepdata-converter-ws
repository, in order to automate building Docker images with the help of Travis and then
pushing them to DockerHub.

The basic workflow is as follows:

1. Modify Dockerfile / requirements.txt (or any other files)
2. Commit it to the repository
3. Push the code
4. Travis will create Docker image from Dockerfile and upload it to DockerHub

## For developers

This file contains file requirements.txt, it is here on purpose, it should not be duplicated
in hepdata-converter-ws repository. Also Travis already has DockerHub credentials in
its encrypted variables. If credentials are ever changed also update secure
variables in Travis build, otherwise the image will be created but not uploaded.

**Warning:** any build will trigger upload of the new image (regardless of the branch,
  so be cautious about it, especially if you plan to start breaking things)


**Run me** 
```
docker pull hepdata/hepdata-converter-ws
docker run --restart=always -d --name=hepdata_converter -p 0.0.0.0:5500:5000 hepdata/hepdata-converter-ws hepdata-converter-ws

```
