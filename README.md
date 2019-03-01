##Magento 2 Development on Kubernetes locally

### Prerequisites
1. Have a Kubernetes cluster
1. Have `kubectl` [installed](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
1. Have `kustomize`[installed](https://github.com/kubernetes-sigs/kustomize/blob/master/docs/INSTALL.md)
1. Install an [Ingress Controller](https://kubernetes.github.io/ingress-nginx/deploy/#docker-for-mac)

### Installation
1. Build the docker image and tag it "magento": `docker build -t magento -f magento.Dockerfile`
1. `kustomize build | kuectl apply -f -`
1. edit your hosts file, add `local.magento` pointing at `127.0.0.1`
1. run a dummy image & mount your magento source [c.f.](https://github.com/docker/for-mac/issues/2549#issuecomment-442265169) `docker run -ti -v $(pwd)/magento:/tmp/magento:delegated busybox`