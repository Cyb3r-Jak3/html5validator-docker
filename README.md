# HTML5Validator

[![Actions Status](https://github.com/Cyb3r-Jak3/html5validator-docker/workflows/Docker%20CI/badge.svg)](https://github.com/Cyb3r-Jak3/html5validator-docker/actions)  
![Docker Pulls](https://img.shields.io/docker/pulls/cyb3rjak3/html5validator)

This is a docker container that I made to test the HTML code for [my website](https://www.jwhite.network) using GitLab pipelines. This will work for any sort of pipeline solution. It setups up a container that has [html5validator](https://github.com/svenkreiss/html5validator) installed. Which saves time with the testing process.

## To use

You use this the same way you use any docker image. I use it for my GitLab pipelines and you can view example configuration of testing [here](https://gitlab.com/Cyb3r-Jak3/portfolio-website/blob/master/.gitlab-ci.yml).

## Tags

There are currently two tags for this image, self, and PyPI. The self tag involves building html5validator from source and the PyPI installs the packaged version.The PyPi tag is more stable than the source branch, thus it is the latest tag.
