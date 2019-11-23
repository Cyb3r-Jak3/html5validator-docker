# HTML5Validator

![Docker Pulls](https://img.shields.io/docker/pulls/Cyb3r-Jak3/html5validator) [![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/cyb3rjak3/html5validator)](https://hub.docker.com/r/cyb3rjak3/html5validator/builds)

This is a docker container that I made to test the html code for [my website](https://www.jwhite.network) using GitLab pipelines. This will work for any sort of pipelines solution. It setups up a container which has [html5validator](https://github.com/svenkreiss/html5validator) installed. Which saves time with the testing process.

## To use

You use this the same way you use any docker image. I use it for my gitlab pipelines and you can view example configuration of testing [here](https://github.com/Cyb3r-Jak3/portfolio-website/blob/master/.gitlab-ci.yml).

## Tags

There are currently two tags for this image. Latest and pypi. The latest tag involves building html5validator from source and the pypi installs the packaged version.
