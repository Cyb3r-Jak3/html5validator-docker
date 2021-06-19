variable "DEFAULT_TAG" {
  default = "html5validator:local"
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
    dockerfile = "./Dockerfiles/Source/slim.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:source-slim",
        "ghcr.io/cyb3r-jak3/html5validator:source-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-slim"
    ]
}

target "source-alpine" {
    dockerfile = "./Dockerfiles/Source/alpine.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:source",
        "cyb3rjak3/html5validator:source-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:source",
        "ghcr.io/cyb3r-jak3/html5validator:source-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:source-alpine"
    ]

}

target "pypi-slim" {
    dockerfile = "./Dockerfiles/PyPi/slim.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:latest-slim",
        "cyb3rjak3/html5validator:pypi-slim",
        "ghcr.io/cyb3r-jak3/html5validator:latest-slim",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-slim"
    ]
}

target "pypi-alpine" {
    dockerfile = "./Dockerfiles/PyPi/alpine.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:latest",
        "cyb3rjak3/html5validator:pypi",
        "cyb3rjak3/html5validator:latest-alpine",
        "cyb3rjak3/html5validator:pypi-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:latest",
        "ghcr.io/cyb3r-jak3/html5validator:latest-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:pypi",
        "ghcr.io/cyb3r-jak3/html5validator:pypi-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:latest-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:pypi-alpine"
    ]
} 

target "experimental-slim" {
    dockerfile = "./Dockerfiles/Experimental/slim.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:experimental-slim",
        "ghcr.io/cyb3r-jak3/html5validator:experimental-slim",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-slim"
    ]
}

target "experimental-alpine" {
    dockerfile = "./Dockerfiles/Experimental/alpine.Dockerfile"
    tags = [
        "cyb3rjak3/html5validator:experimental",
        "cyb3rjak3/html5validator:experimental-alpine",
        "ghcr.io/cyb3r-jak3/html5validator:experimental",
        "ghcr.io/cyb3r-jak3/html5validator:experimental-alpine",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental",
        "registry.gitlab.com/cyb3r-jak3/html5validator-docker:experimental-alpine"
    ]

}
// Special target: https://github.com/docker/metadata-action#bake-definition
target "docker-metadata-action" {}

target "image-all" {
    inherits = ["source-slim", "source-alpine", "pypi-slim", "pypi-alpine", "experimental-slim", "experimental-alpine"]
    platforms = [
        "linux/amd64",
        "linux/arm/v6",
        "linux/arm/v7",
        "linux/arm64",
        "linux/386",
        "linux/ppc64le",
    ]
}