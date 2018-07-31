set -ex

USERNAME=idleserv
IMAGE=rq-dashboard

docker build -t $USERNAME/$IMAGE:latest .
