# carvel-suite-example

> This repository is an example of using the [Carvel suite](https://carvel.dev/).
> Read [Deploy Kubernetes Applications with the Carvel Suite](https://dustinspecker.com/posts/deploy-kubernetes-applications-carvel-suite/) for more info.

## Usage for Linux amd64

1. Install [lockal v0.1.0](https://github.com/dustinspecker/lockal)
1. Clone this repository and navigate to its root
1. Run `lockal install`
1. Run `./bin/kind create cluster`
1. Run `./deploy.sh`

Kapp will deploy an nginx deployment and loki-stack to the Kubernetes cluster in kind.
