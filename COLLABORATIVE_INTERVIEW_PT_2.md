# Collaborative Interview Pt. 2
1. Configure Kubectl to point to Production
```bash
# Production
gcloud container clusters get-credentials production --zone=us-west1-a
kubectl config get-contexts
# gke_flexe-interviews_us-west1-a_production
```

### Goals
1. Collaboratively develop Continuous Deployment pipeline that takes an application from Staging to 
Production 
2. Collaboratively work identify and instrument monitoring and alerting for node.js application

## Notes
* [Jenkinsfile](./Jenkinsfile) skeleton is already setup with 
* https://grafana-interviews.flexe.com is partially setup for production environment
