# Project Infrastructure as a Code!
## Project Idea
Idea is to deploy an infrastructure as a code, alongside with a configuration management tool (i.e. Ansible) which will perform installation and upgrades of the instances deployed on AWS with Terrarform.  
Containerize a Flask application (ideally a blog with CRUD capability) published up onto dockerhub.  
Launched instances will be a Kubernetes cluster, so we will create a deployment based on the image we upload to docker.  
Afterwards, either use Ansible or Kubernetes (ideally kubernetes) to have continuos monitoring utilizing Prometheus and Grafana.  
Doing so i could pick up Terrarform, Ansible, Flask, Kubernetes and Prometheus/Grafana.  

## To-do List
- [x] Install terraform and document the step down
- [x] Write a terraform script to deploy AWS instances
- [x] Install ansible on my WSL Node
- [x] Configure ansible to remotely managed the AWS instances
- [x] Write a playbook to configure and install kubernetes cluster for both instancse (1x Master, 1x Worker)
- [ ] Containerize both flask application and PostgresSQl, either saved the image locally or publish to dockerhub
      - Writing a flask application with CRUD capability will require a database, planing to use PostgreSQL for this.
- [ ] Write a deployment, service for this application's image
- [ ] Write a playbook to deploy Prometheus and Grafana
- [ ] Write a playbook to configure node_exporters on the x2 aws instance
- [ ] Integrating CI/CD component with Jenkins once base structure is completed

## Researching
Have to research more on this portion.
Researching for a CI tool that could be used to build and test Python Flask Application.  
  
Jenkins Reference:  
[Jenkins with Python Flask App Deployment](https://joachim8675309.medium.com/jenkins-ci-pipeline-with-python-8bf1a0234ec3)  
  
Testing tools:  
Have to research more on this portion.

## Learning points! (Will be updated along the way!)
