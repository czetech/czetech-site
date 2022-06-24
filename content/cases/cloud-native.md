---
menu:
  main:
    parent: cases
    weight: 10
title: Cloud Native
---

# Migration of the entire infrastructure to Cloud Native

The Customer has been developing his IT services for years, which consists of several applications in different languages (PHP, Java, Python and other) running on several older servers.

The Customer wants to modernize his IT infrastructure and migrate to AWS.

## Solution

After a thorough analysis of Customer infrastructure, codebase and deploying processes, we made:

- Explained to the Customer the principles of [12 factors](https://12factor.net/) and adjusted Customer's codebase.
- Wrote Dockerfiles and appropriate Helm charts for all software components.
- In GitLab, created CI/CD configurations for all software components within multiple environments.

We built a Kubernetes cluster with 128GB of memory and 1,600 pods, which made it necessary to build a specific CNI plugin. We have also set up many other AWS services, mostly using Terraform.

Finally, we made the entire migration.

## Results

The Customer has:

- Modern, scalable infrastructure.
- Only a fraction of the time required for IT administration compared to the previous solution.
- All necessary components are redundant.
- Multiple environments and CI/CD processes.
- Disaster recovery plan and the ability to build the entire infrastructure with services in minutes.

## Open-source contribution

We are creating many cloud native software services for multiple customers. Since we didn't want to write many similar CI/CD configurations and weren't satisfied with Gitlab's Auto DevOps, we created and open-sourced the [LightDevOps](https://github.com/czetech/lightdevops) project, which are universal GitLab CI/CD pipelines configured using GitLab variables which are suitable for most common applications.
