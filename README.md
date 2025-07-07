# FlaskDocKubeInt
<br> Build Docker Image and Run it
<br>
<br> $ docker build -t flaskimage .
<br> $ docker run -it -p 8000:8000 flaskimage
<br>
<br> Push Image to Dockerhub
<br>
<br> $ docker login -u sowjanyajindam
<br> $ docker tag flaskimage sowjanyajindam/flaskimage
<br> $ docker push sowjanyajindam/flaskimage
<br>
<br> Deploy application using Kubernetes
<br>
<br> $ cd k8s
<br> $ kubectl apply -f deployment.yaml
<br> $ kubectl apply -f service.yaml
<br> $ kubectl expose deployment flask-app --type=NodePort --port=8000 --target-port=8000
<br> $ kubectl port-forward service/flask-app 8000:8000
<br>
<br> Automate the Deployment using deploy.sh 
<br>
<br> $ cd ..
<br> $ chmod +x deploy.sh
<br> $ ./deploy.sh
