[![GitHub Actions Status](https://github.com/HEPData/hepdata-converter-ws-docker/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/HEPData/hepdata-converter-ws-docker/actions?query=branch%3Amain)
[![Docker Pulls](https://img.shields.io/docker/pulls/hepdata/hepdata-converter)](https://hub.docker.com/r/hepdata/hepdata-converter)

# hepdata-converter-ws-docker

*Build system for creating Docker image used to run hepdata-converter-ws*

This is a *companion repository* for the [hepdata-converter-ws](https://github.com/HEPData/hepdata-converter-ws) repository.

This repository automates building Docker images with the help of GitHub Actions and then
pushing them to [Docker Hub](https://hub.docker.com/r/hepdata/hepdata-converter-ws). The Docker image installs
[hepdata-converter-ws from PyPI](https://pypi.org/project/hepdata-converter-ws/)
and then runs the web service (on its default port, 5000).

The basic workflow is as follows:

1. Modify the `Dockerfile` (or any other files) (e.g. to fix the PyPI version of hepdata-converter-ws)
2. Commit it to the repository
3. Push the code to GitHub
4. GitHub Actions will create a Docker image from the ``Dockerfile`` and upload it to Docker Hub

## For developers

GitHub Actions already has Docker Hub credentials in its encrypted variables. If credentials are ever changed also
update the secure variables in the GitHub Actions build, otherwise the image will be created but not uploaded.

**Warning:** any build on the main branch (or a tagged release) will trigger upload of the new image,
  so be cautious about it, especially if you plan to start breaking things.


**Run me**
```
docker pull hepdata/hepdata-converter-ws
docker run --restart=always -d --name=hepdata_converter -p 0.0.0.0:5500:5000 hepdata/hepdata-converter-ws hepdata-converter-ws

```
