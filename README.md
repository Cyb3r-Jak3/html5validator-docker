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
docker pull cyb3rjak3/html5validator:latest-alpine

# If your code is in a relative directory called `public`
docker run --rm -i -v $(pwd):/mnt -w /mnt cyb3rjak3/html5validator:latest-alpine html5validator --root public
```

## Sources

You can pull the image from either Docker Hub or GitHub. Currently the default images are based off of `python3-alpine3.12` there are images available using `python3.6-slim`.

To use the slim based images add `-slim` to the tag you are using, i.e. `cyb3rjak3/html5validator:latest` becomes `cyb3rjak3/html5validator:latest-slim`.

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

This project uses GitHub's container registry so you can use this the in a similar way to the docker images.

```bash
docker pull ghcr.io/cyb3rjak3/html5validator:latest
```

To use the source image:

```bash
docker pull ghcr.io/cyb3rjak3/html5validator:source
```

To use the experimental image:

```bash
docker pull ghcr.io/cyb3rjak3/html5validator:experimental
```

Read more about GitHub's container registry [here](https://docs.github.com/en/free-pro-team@latest/packages/getting-started-with-github-container-registry)

## Tags

There are currently three tags for this image: source, pypi, and experimental. The source tag involves building html5validator from source, the PyPI installs the packaged version, and the experimental branch builds from my fork of html5validator. The PyPi tag is more stable than the source branch, thus it is the latest tag. There has not been a PyPi release recently so certain feature might be missing from the pypi tag.
