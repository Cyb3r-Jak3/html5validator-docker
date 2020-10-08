# HTML5Validator

[![Docker Pulls](https://img.shields.io/docker/pulls/cyb3rjak3/html5validator)](https://hub.docker.com/r/cyb3rjak3/html5validator)

[![Actions Status](https://github.com/Cyb3r-Jak3/html5validator-docker/workflows/Docker%20CI/badge.svg)](https://github.com/Cyb3r-Jak3/html5validator-docker/actions) [![Actions Status](https://github.com/Cyb3r-Jak3/html5validator-docker/workflows/GitHub%20CI/badge.svg)](https://github.com/Cyb3r-Jak3/html5validator-docker/actions) [![pipeline status](https://gitlab.com/Cyb3r-Jak3/html5validator-docker/badges/master/pipeline.svg)](https://gitlab.com/Cyb3r-Jak3/html5validator-docker/-/commits/master)

This is a docker image made to test HTML code. I developed it for [my website](https://www.jwhite.network) using GitLab pipelines. This will work for any sort of pipeline solution. It setups up a container that has [html5validator](https://github.com/svenkreiss/html5validator) installed, which saves time with the testing process.

There are images available through GitHub or Docker Hub.

## To use

First figure out the version you want then checkout out the [source](#sources)

### GitLab Pipeline

Using the source of your choosing you will want something like:

```yaml
html_test:
  stage: test
  image: cyb3rjak3/html5validator:latest-alpine
  script:
    - html5validator --root public/ --also-check-css --log INFO
```

Which is used by this [project](.gitlab-ci.yml)

### GitHub Action

For GitHub Actions, please use the action that I have built here: [HTML5 Validator](https://github.com/marketplace/actions/html5-validator)
The action is built using this image

[Source Repo](https://github.com/Cyb3r-Jak3/html5validator-action)

### Local

```bash
# Pull the image of your choosing. Only has to be done once
docker pull html5validator:latest-alpine

# If you code is in a relative directory called `public`
docker run --rm -i -v $(pwd):/ cyb3rjak3/html5validator:latest-alpine html5validator --root /public
```

## Sources

You can pull the image from either Docker Hub or GitHub. Currently the default images are based off of `python3-slim` there are images available using `python3.6-alpine3.12` if a smaller size is desired. Once there is enough testing then I will switch the default images over to alpine based ones.

To use the alpine based images add `-alpine` to the tag you are using, i.e. `cyb3rjak3/html5validator:latest` become `cyb3rjak3/html5validator:latest-alpine`.

### Docker

You use this the same way you use any docker image.

```bash
docker pull cyb3rjak3/html5validator:latest
```

To use the source image:  

```bash
docker pull cyb3rjak3/html5validator:source
```

To use the experimental image:  

```bash
docker pull cyb3rjak3/html5validator:experimental
```

### GitHub

If you want to use the GitHub packages, the naming scheme is different from the standard docker one ([Read more here](https://help.github.com/en/github/managing-packages-with-github-packages/configuring-docker-for-use-with-github-packages#installing-a-package)). Additionally the versioning is different, thus there are three separate packages, html5validator-source and html5validator-PyPI, html5-validator-experimental.

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
docker pull docker.pkg.github.com/cyb3r-jak3/html5validator-docker/html5validator-experimental:latest
```

**Important:** There is a package that is just html5validator. **DO NOT USE IT** It was made when I was testing it and I am unable to delete it.

## Tags

There are currently three tags for this image: self, pypi, and experimental. The self tag involves building html5validator from source, the PyPI installs the packaged version, and the experimental branch builds from my fork of html5validator. The PyPi tag is more stable than the source branch, thus it is the latest tag.
