set -ex

USERNAME=idleserv
IMAGE=rq-dashboard

docker buildx build --platform linux/amd64 -t $USERNAME/$IMAGE:latest .