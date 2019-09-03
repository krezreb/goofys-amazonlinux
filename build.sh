
cd $(dirname $0)

TAG=goofys-amazonlinux

# build docker image
docker build . -t $TAG

# make release dir
mkdir release

# run image with a volume to copy the binary from image to host
docker run -it -v $(pwd)/release:/release $TAG cp /goofys/bin/goofys /release/

# delete image
docker rmi $TAG --force

# now goofys is in ./release, all you have to do is commit and tag
