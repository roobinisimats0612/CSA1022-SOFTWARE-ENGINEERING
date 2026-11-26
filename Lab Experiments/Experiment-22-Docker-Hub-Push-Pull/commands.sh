#!/usr/bin/env bash
docker build -t static-web .
docker login -u <dockerhub-username>
docker tag static-web <dockerhub-username>/static-web:1.0
docker tag static-web <dockerhub-username>/static-web:latest
docker push <dockerhub-username>/static-web:1.0
docker push <dockerhub-username>/static-web:latest
docker pull <dockerhub-username>/static-web:1.0
docker run -d --name web -p 8080:80 <dockerhub-username>/static-web:1.0
