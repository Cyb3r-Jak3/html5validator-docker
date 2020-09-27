# HTML5Validator

[![Docker Pulls](https://img.shields.io/docker/pulls/cyb3rjak3/html5validator)](https://hub.docker.com/r/cyb3rjak3/html5validator)

[![Actions Status](https://github.com/Cyb3r-Jak3/html5validator-docker/workflows/Docker%20CI/badge.svg)](https://github.com/Cyb3r-Jak3/html5validator-docker/actions)  
[![Actions Status](https://github.com/Cyb3r-Jak3/html5validator-docker/workflows/GitHub%20CI/badge.svg)](https://github.com/Cyb3r-Jak3/html5validator-docker/actions)  

This is a docker container that I made to test the HTML code for [my website](https://www.jwhite.network) using GitLab pipelines. This will work for any sort of pipeline solution. It setups up a container that has [html5validator](https://github.com/svenkreiss/html5validator) installed. Which saves time with the testing process.

There are packages available through GitHub or Docker Hub.

For ease of use in GitHub, check out my [Github Action](https://github.com/marketplace/actions/html5-validator)

## To use

### Docker

You use this the same way you use any docker image. I use it in my GitLab pipelines and you can view example configuration of testing [here](https://gitlab.com/Cyb3r-Jak3/portfolio-website/blob/master/.gitlab-ci.yml).

### GitHub

If you want to use the GitHub packages, the naming scheme is different from the standard docker one ([Read more here](https://help.github.com/en/github/managing-packages-with-github-packages/configuring-docker-for-use-with-github-packages#installing-a-package)). Additionally the versioning is different, thus there are two separate packages. There are html5validator-source and html5validator-PyPI.

To use the PyPI image:  

```bash
docker pull docker.pkg.github.com/cyb3r-jak3/html5validator-docker/html5validator-pypi:latest
```

To use the source image:  

```bash
docker pull docker.pkg.github.com/cyb3r-jak3/html5validator-docker/html5validator-source:latest
```

To use the experimental image:  

```bash
docker pull docker.pkg.github.com/cyb3r-jak3/html5validator-docker/html5validator-source:latest
```

**Important:** There is a package that is just html5validator. **DO NOT USE IT** It was made when I was testing it and I am unable to delete it.

## Tags

There are currently three tags for this image: self, pypi, and experimental. The self tag involves building html5validator from source, the PyPI installs the packaged version, and the experimental branch builds from my fork of html5validator. The PyPi tag is more stable than the source branch, thus it is the latest tag.
