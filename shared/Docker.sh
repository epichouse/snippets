# Add Docker commands here

# Run Container
docker run -d --name webserver -d -p 8099:80 nginx

# Login to Docker Hub
docker login -u danshaw509

# Build Container Image
docker build . -t epichouse.web:v1

# Rename Image
docker tag epichouse.web:v1 danshaw509/epichouse.web:v1

# Push to Docker Hub
docker push danshaw509/epichouse.web:v1