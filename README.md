Trend Deployment using Docker, Jenkins and Kubernetes on AWS EKS


Project Overview
This project demonstrates a complete CI/CD pipeline for deploying a containerized web application to Amazon EKS using Jenkins, Docker, Kubernetes, and AWS. The pipeline automatically builds the Docker image, pushes it to Docker Hub, and deploys the latest version to the Kubernetes cluster.
________________________________________
GitHub Repository
Repository:
https://github.com/Theresa23-2025/Trend-Deployment
________________________________________
Docker Hub Repository
Docker Hub Profile:
https://hub.docker.com/u/theresajoseph
Docker Image:
theresajoseph/trend-app:latest
Docker Image URL:
https://hub.docker.com/r/theresajoseph/trend-app
________________________________________
Project Architecture
GitHub
   │
   ▼
Jenkins Pipeline
   │
   ▼
Docker Build
   │
   ▼
Docker Hub
   │
   ▼
Amazon EKS
   │
   ▼
Kubernetes Deployment
   │
   ▼
LoadBalancer Service
   │
   ▼
Application
________________________________________
Technologies Used
•	AWS EC2
•	Amazon EKS
•	Docker
•	Docker Hub
•	Jenkins
•	Kubernetes
•	Git
•	GitHub
•	Nginx
•	HTML
•	CSS
•	JavaScript
________________________________________
Project Structure
Trend/
│
├── Dockerfile
├── Jenkinsfile
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
├── dist/
├── README.md
└── Source Files
________________________________________
CI/CD Pipeline Workflow
1.	Push source code to GitHub.
2.	Jenkins automatically checks out the latest code.
3.	Docker builds the application image.
4.	Jenkins logs in to Docker Hub.
5.	Docker image is pushed to Docker Hub.
6.	Jenkins restarts the Kubernetes deployment.
7.	Kubernetes performs a rolling update.
8.	Application becomes available through the AWS Load Balancer.
________________________________________
Kubernetes Deployment
Deployment Name
trend-app
Replicas
2
Service Type
LoadBalancer
________________________________________
Load Balancer Details
Type
Classic Load Balancer (ELB)
Load Balancer Name
a183e174cdbd547daa62d21ab028c67f
Application URL
http://a183e174cdbd547daa62d21ab028c67f-1179281742.us-west-2.elb.amazonaws.com
DNS Name
a183e174cdbd547daa62d21ab028c67f-1179281742.us-west-2.elb.amazonaws.com
ARN
Not Applicable (Classic ELB does not provide an ARN)
________________________________________
Useful Commands
kubectl get deployments

kubectl get pods

kubectl get svc

kubectl rollout status deployment/trend-app

docker build -t theresajoseph/trend-app:latest .

docker push theresajoseph/trend-app:latest
________________________________________
Deployment Verification
•	Docker image successfully built.
•	Docker image successfully pushed to Docker Hub.
•	Jenkins pipeline completed successfully.
•	Kubernetes deployment completed successfully.
•	Pods are running successfully.
•	LoadBalancer created successfully.
•	Application accessible through browser.
________________________________________
Monitoring
Monitoring was verified using AWS EC2 Monitoring.
Observed Metrics:
•	CPU Utilization
•	Network In
•	Network Out
•	CPU Credit Usage
________________________________________
Screenshots
Include the following screenshots:
•	GitHub Repository
•	Jenkins Pipeline Success
•	Docker Hub Repository
•	Docker Build
•	Docker Push
•	Kubernetes Deployment
•	Running Pods
•	Kubernetes Service
•	LoadBalancer Details
•	Application Running in Browser
•	AWS EC2 Monitoring
________________________________________
Result
The project successfully implements an end-to-end CI/CD pipeline using GitHub, Jenkins, Docker, Docker Hub, Kubernetes, and Amazon EKS. The application is automatically built, pushed, deployed, and made available through an AWS Load Balancer.
________________________________________
Author
Theresa
Trend Deployment using Docker, Jenkins, Kubernetes and AWS EKS
