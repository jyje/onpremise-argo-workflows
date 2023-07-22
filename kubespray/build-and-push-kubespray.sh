git clone https://github.com/kubernetes-sigs/kubespray $HOME/repos/kubespray
cd $HOME/repos/kubespray

IMAGE_TAG=$(git rev-parse --short=7 HEAD)

docker login

docker buildx build --push \
  --platform linux/amd64,linux/arm64 \
  --tag jyje/kubespray:$IMAGE_TAG \
  --tag jyje/kubespray:latest \
  .
