#!/bin/bash

IMAGE_NAME=sowjanyajindam/flaskimage

echo "🚀 Building Docker image..."
docker build -t flaskimage .

echo "🔐 Logging in to Docker Hub (if not already)..."
docker login

echo "📤 Pushing image to Docker Hub..."
docker push sowjanyajindam/flaskimage

echo "⚙️ Deploying to Kubernetes..."
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

echo "✅ Deployment complete!"
echo "🌐 Access the app using this command:"
echo "    minikube service flask-service"
kubectl expose deployment flask-app --type=NodePort --port=8000 --target-port=8000
kubectl get service flask-app
kubectl port-forward service/flask-app 8000:8000