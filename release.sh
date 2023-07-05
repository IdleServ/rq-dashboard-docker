set -ex

USERNAME=idleserv
IMAGE=rq-dashboard

# Ensure we're up to date
git pull

# Bump version
docker run --rm -v "$PWD":/app treeder/bump patch
version=`cat VERSION`
echo "Version: $version"

# Build image
docker buildx build --platform linux/amd64 --push -t $USERNAME/$IMAGE:latest -t $USERNAME/$IMAGE:$version .

# Tag it
git add -A
git commit -m "Version $version"
git tag -a "$version" -m "Version $version"
git push
git push --tags
