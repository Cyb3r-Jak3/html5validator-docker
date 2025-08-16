# HTML5Validator

[![Docker Pulls](https://img.shields.io/docker/pulls/cyb3rjak3/html5validator)](https://hub.docker.com/r/cyb3rjak3/html5validator)

[![Publish](https://github.com/Cyb3r-Jak3/html5validator-docker/actions/workflows/publish.yml/badge.svg)](https://github.com/Cyb3r-Jak3/html5validator-docker/actions/workflows/publish.yml) [![Test Build](https://github.com/Cyb3r-Jak3/html5validator-docker/actions/workflows/test_build.yml/badge.svg)](https://github.com/Cyb3r-Jak3/html5validator-docker/actions/workflows/test_build.yml)

This is a docker image made to test HTML code. I developed it for [my website](https://cyberjake.xyz) using GitHub Actions. This will work for any sort of pipeline solution. It setups up a container that has [html5validator](https://github.com/Cyb3r-Jak3/html5validator-2) (>= 5) [html5validator](https://github.com/svenkreiss/html5validator) (< 5) installed, which saves time with the testing process.

There are images available through GitHub, Docker Hub or GitLab.

## To use

First figure out the version you want then checkout out the [source](#sources)

### GitLab Pipeline

Using the source of your choosing you will want something like:

```yaml
html_test:
  stage: test
  image: gitlab.com/Cyb3r-Jak3/html5validator-docker:latest-alpine
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

You can pull the image from either Docker Hub, GitHub, or GitLab. Currently the default images are based off of `python:3.9-alpine` there are images available using `python:3.9-slim`.

To use the slim based images add `-slim` to the tag you are using, i.e. `cyb3rjak3/html5validator:latest` becomes `cyb3rjak3/html5validator:latest-slim`.

|              | [Docker](https://hub.docker.com/r/cyb3rjak3/html5validator) | [GitHub](https://github.com/Cyb3r-Jak3/html5validator-docker/pkgs/container/html5validator) | [Gitlab](https://gitlab.com/Cyb3r-Jak3/html5validator-docker/container_registry/1945095) |
|--------------|-------------------------------------------------------------|---------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------|
| pypi         | cyb3rjak3/html5validator:pypi                               | ghcr.io/cyb3rjak3/html5validator:pypi                                                       | registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi                                |
| source       | cyb3rjak3/html5validator:source                             | ghcr.io/cyb3rjak3/html5validator:source                                                     | registry.gitlab.com/cyb3r-jak3/html5validator-docker:source                              |
| experimental | cyb3rjak3/html5validator:experimental                       | ghcr.io/cyb3rjak3/html5validator:experimental                                               | registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental                        |

## Tags

> [!WARNING]  
> `experimental` has been deprecated with release of v5. This is because source now used my fork.

There are currently two tags for this image: `source`, `pypi`, and `experimental`. The source tag involves building html5validator from [source](https://github.com/Cyb3r-Jak3/html5validator), the PyPI installs the packaged version. The PyPi tag is more stable than the source branch, thus it is the latest tag.
