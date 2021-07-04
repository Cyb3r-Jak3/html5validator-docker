variable "EXPERIMENTAL_URL" {
    default = "https://github.com/Cyb3r-Jak3/html5validator.git"
}

variable "DOCKER_META_VERSION" {
    default = "v0.0.0"
}

group "release" {
    targets = [
        "source-slim-release",
        "source-alpine-release",
        "pypi-slim-release",
        "pypi-alpine-release",
        "experimental-slim",
        "experimental-alpine"
    ]
}

group "all" {
    targets = ["slim","pypi","experimental"]
}
group "slim" {
    targets = ["source-slim", "source-alpine"]
}

group "pypi" {
    targets = ["pypi-slim", "pypi-alpine"]
}

group "experimental" {
    targets = ["experimental-slim", "experimental-alpine"]
}

target "cache" {
    cache-to=["type=local,dest=/tmp/.buildx-cache-new"]
    cache-from=["type=local,src=/tmp/.buildx-cache"]
}

target "source-slim" {
    inherits = ["cache"]
    dockerfile = "./Dockerfiles/source/slim.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:source-slim",
        "cyb3rjak3/html5validator:source-slim-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:source-slim",
        "ghcr.io/cyb3r-jak3/html5validator:source-slim-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-slim-${DOCKER_META_VERSION}"
    ]
}

target "source-alpine" {
    inherits = ["cache"]
    dockerfile = "./Dockerfiles/source/alpine.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:source",
        "cyb3rjak3/html5validator:source-${DOCKER_META_VERSION}",
        "cyb3rjak3/html5validator:source-alpine",
        "cyb3rjak3/html5validator:source-alpine-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:source",
        "ghcr.io/cyb3r-jak3/html5validator:source-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:source-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:source-alpine-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-alpine-${DOCKER_META_VERSION}"
    ]

}

target "pypi-slim" {
    inherits = ["cache"]
    dockerfile = "./Dockerfiles/pypi/slim.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:latest-slim",
        "cyb3rjak3/html5validator:pypi-slim",
        "cyb3rjak3/html5validator:pypi-slim-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:latest-slim",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-slim",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-slim-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-slim-${DOCKER_META_VERSION}"
    ]
}

target "pypi-alpine" {
    inherits = ["cache"]
    dockerfile = "./Dockerfiles/pypi/alpine.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:latest",
        "cyb3rjak3/html5validator:pypi",
        "cyb3rjak3/html5validator:pypi-${DOCKER_META_VERSION}",
        "cyb3rjak3/html5validator:latest-alpine",
        "cyb3rjak3/html5validator:pypi-alpine",
        "cyb3rjak3/html5validator:pypi-alpine-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:latest",
        "ghcr.io/cyb3r-jak3/html5validator:${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:latest-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:pypi",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-alpine-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-alpine-${DOCKER_META_VERSION}"
    ]
} 

target "experimental-slim" {
    inherits = ["cache"]
    dockerfile = "./Dockerfiles/source/slim.Dockerfile"
    args = {
        GIT_URL = "${EXPERIMENTAL_URL}"
    }
    tags = [
        "cyb3rjak3/html5validator:experimental-slim",
        "cyb3rjak3/html5validator:experimental-slim-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:experimental-slim",
        "ghcr.io/cyb3r-jak3/html5validator:experimental-slim-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-slim-${DOCKER_META_VERSION}"
    ]
}

target "experimental-alpine" {
    inherits = ["cache"]
    dockerfile = "./Dockerfiles/source/alpine.Dockerfile"
    args = {
        GIT_URL = "${EXPERIMENTAL_URL}"
    }
    tags = [
        "cyb3rjak3/html5validator:experimental",
        "cyb3rjak3/html5validator:experimental-${DOCKER_META_VERSION}",
        "cyb3rjak3/html5validator:experimental-alpine",
        "cyb3rjak3/html5validator:experimental-alpine-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:experimental",
        "ghcr.io/cyb3r-jak3/html5validator:experimental-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:experimental-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:experimental-alpine-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-alpine-${DOCKER_META_VERSION}"
    ]

}

// Special target: https://github.com/docker/metadata-action#bake-definition
target "docker-metadata-action" {
    platforms = [
        "linux/amd64",
        "linux/arm/v6",
        "linux/arm/v7",
        "linux/arm64",
        "linux/386",
    ]
}

target "source-slim-release" {
    inherits = ["source-slim", "docker-metadata-action"]
}

target "source-alpine-release" {
    inherits = ["source-alpine", "docker-metadata-action"]
}

target "pypi-slim-release" {
    inherits = ["pypi-slim", "docker-metadata-action"]
}

target "pypi-alpine-release" {
    inherits = ["pypi-alpine","docker-metadata-action"]
}

target "experimental-slim-release" {
    inherits = ["experimental-slim", "docker-metadata-action"]
}

target "experimental-alpine-release" {
    inherits = ["experimental-alpine", "docker-metadata-action"]
}