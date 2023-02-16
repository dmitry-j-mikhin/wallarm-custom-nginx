set -ex

docker build --pull \
 --tag dmikhin/node-custom:4.4 .
docker push dmikhin/node-custom:4.4