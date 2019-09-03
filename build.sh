
cd $(dirname $0)

TAG=goofys-amazonlinux
docker build . -t $TAG

mkdir release
docker run -it -v $(pwd)/release:/release $TAG cp /goofys/bin/goofys /release/

docker rm $TAG
