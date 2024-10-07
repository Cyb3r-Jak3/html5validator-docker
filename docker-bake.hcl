variable "EXPERIMENTAL_URL" {
    default = "https://github.com/Cyb3r-Jak3/html5validator.git"
}

variable "DOCKER_META_VERSION" {
    default = "dev"
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

target "source-slim" {
    dockerfile = "./Dockerfiles/slim.Dockerfile"
    target = "source"
    tags = [
        "cyb3rjak3/html5validator:source-slim",
        "cyb3rjak3/html5validator:source-slim-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:source-slim",
        "ghcr.io/cyb3r-jak3/html5validator:source-slim-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-slim-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:source-slim",
        "mine.jfrog.cyberjake.xyz/html5validator:source-slim-${DOCKER_META_VERSION}",
    ]
}

target "source-alpine" {
    dockerfile = "./Dockerfiles/alpine.Dockerfile"
    target = "source"
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
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-alpine-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:source",
        "mine.jfrog.cyberjake.xyz/html5validator:source-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:source-alpine",
        "mine.jfrog.cyberjake.xyz/html5validator:source-alpine-${DOCKER_META_VERSION}",
    ]

}

target "pypi-slim" {
    dockerfile = "./Dockerfiles/slim.Dockerfile"
    target = "pypi"
    tags = [
        "cyb3rjak3/html5validator:latest-slim",
        "cyb3rjak3/html5validator:pypi-slim",
        "cyb3rjak3/html5validator:latest-slim-${DOCKER_META_VERSION}",
        "cyb3rjak3/html5validator:pypi-slim-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:latest-slim",
        "ghcr.io/cyb3r-jak3/html5validator:latest-slim-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-slim",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-slim-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest-slim-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-slim-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:latest-slim",
        "mine.jfrog.cyberjake.xyz/html5validator:pypi-slim",
        "mine.jfrog.cyberjake.xyz/html5validator:latest-slim-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:pypi-slim-${DOCKER_META_VERSION}",
    ]
}

target "pypi-alpine" {
    dockerfile = "./Dockerfiles/alpine.Dockerfile"
    target = "pypi"
    tags = [
        "cyb3rjak3/html5validator:latest",
        "cyb3rjak3/html5validator:pypi",
        "cyb3rjak3/html5validator:pypi-${DOCKER_META_VERSION}",
        "cyb3rjak3/html5validator:latest-alpine",
        "cyb3rjak3/html5validator:latest-alpine-${DOCKER_META_VERSION}",
        "cyb3rjak3/html5validator:pypi-alpine",
        "cyb3rjak3/html5validator:pypi-alpine-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:latest",
        "ghcr.io/cyb3r-jak3/html5validator:latest-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:latest-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:pypi",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-alpine-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-alpine-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:latest",
        "mine.jfrog.cyberjake.xyz/html5validator:pypi",
        "mine.jfrog.cyberjake.xyz/html5validator:pypi-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:latest-alpine",
        "mine.jfrog.cyberjake.xyz/html5validator:latest-alpine-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:pypi-alpine",
        "mine.jfrog.cyberjake.xyz/html5validator:pypi-alpine-${DOCKER_META_VERSION}",
    ]
} 

target "experimental-slim" {
    dockerfile = "./Dockerfiles/slim.Dockerfile"
    target = "source"
    args = {
        GIT_URL = "${EXPERIMENTAL_URL}"
    }
    tags = [
        "cyb3rjak3/html5validator:experimental-slim",
        "cyb3rjak3/html5validator:experimental-slim-${DOCKER_META_VERSION}",
        "ghcr.io/cyb3r-jak3/html5validator:experimental-slim",
        "ghcr.io/cyb3r-jak3/html5validator:experimental-slim-${DOCKER_META_VERSION}",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-slim-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:experimental-slim",
        "mine.jfrog.cyberjake.xyz/html5validator:experimental-slim-${DOCKER_META_VERSION}",
    ]
}

target "experimental-alpine" {
    dockerfile = "./Dockerfiles/alpine.Dockerfile"
    target = "source"
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
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-alpine-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:experimental",
        "mine.jfrog.cyberjake.xyz/html5validator:experimental-${DOCKER_META_VERSION}",
        "mine.jfrog.cyberjake.xyz/html5validator:experimental-alpine",
        "mine.jfrog.cyberjake.xyz/html5validator:experimental-alpine-${DOCKER_META_VERSION}",
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
    inherits = ["docker-metadata-action", "source-slim"]
}

target "source-alpine-release" {
    inherits = ["docker-metadata-action", "source-alpine"]
}

target "pypi-slim-release" {
    inherits = ["docker-metadata-action", "pypi-slim"]
}

target "pypi-alpine-release" {
    inherits = ["docker-metadata-action", "pypi-alpine"]
}

target "experimental-slim-release" {
    inherits = ["docker-metadata-action", "experimental-slim"]
}

target "experimental-alpine-release" {
    inherits = ["docker-metadata-action", "experimental-alpine"]
} 