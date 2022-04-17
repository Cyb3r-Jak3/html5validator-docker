# Changelog

All notable changes to this project will be documented in this file. Headers that only have a date mean that there was no release.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [v4] 2022-04-17

### Changed

- Bumped to Python 3.10

## [v3] 2021-10-28

### Changed

- Switch to multistage builds to reduce dockerfiles further
- Bumped to Python 3.9

### Removed

- Meta Tags

## 2021-07-05

### Changed

- Fix order for tag generation.

## [v2.2.0] - 2021-06-17

- Switched to using docker-bake for building
- Remove experimental Docker files in favor of build arg

## 2021-05-27

### Changed

- Switched to using more GitHub actions to the build process

## 2021-05-12

### Added

- GitLab container images

## [v2.1.0] - 2021-02-21

### Added

- Support for amd64, arm64, and arm platforms

### Changed

- Swapped to docker build and push action

## 2020-12-20

### Changed

- Swapped latest tag to alpine images. See [this issue](https://github.com/Cyb3r-Jak3/html5validator-docker/issues/16) for more info.

## [2.0.0] - 2020-09-27

### Added

- Experimental Docker file that uses my fork of html5validator

## [1.0.0] - 2020-07-17

### Added

- First Release including Source and Pypi Dockerfiles
