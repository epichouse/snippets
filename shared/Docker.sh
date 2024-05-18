# Add Docker commands here

# Run Container
docker run -d --name webserver -d -p 8099:80 nginx

# Build Container Image
docker build . -t cloud46.ubuntu.v1