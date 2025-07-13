# 🚀 Full DevOps Project: Medusa Backend on AWS with Terraform & GitHub Actions

This project demonstrates a **complete DevOps pipeline** for deploying the open-source Medusa headless commerce backend on **AWS ECS Fargate**, using **Terraform** for infrastructure-as-code and **GitHub Actions** for CI/CD automation.

## 🔧 Tech Stack

- **Medusa.js** (Headless Commerce Backend)
- **AWS ECS Fargate** (Container Orchestration)
- **Amazon RDS (PostgreSQL)** (Relational DB)
- **Amazon S3** (File Storage)
- **Amazon DynamoDB** (File Metadata Logging)
- **AWS Secrets Manager** (Secure Runtime Secrets)
- **GitHub Actions** (CI/CD Automation)
- **Terraform** (Infrastructure Provisioning)

---

## 🗂 Project Structure

```
.
├── .github/workflows/
│   ├── terraform.yml     
│   └── medusa-deploy.yml       
├── infra/                      
├── medusa-backend/                 
├── README.md                
```

---

## 🏗️ Architecture Overview

- Medusa runs in a **Docker container** on AWS ECS (Fargate)
- A **PostgreSQL database** is provisioned in Amazon RDS
- Product images are uploaded to **Amazon S3**
- Upload metadata is logged in **Amazon DynamoDB**
- Secrets like `DATABASE_URL` are managed in **AWS Secrets Manager**
- CI/CD credentials are managed using **GitHub Secrets**
- **ALB (Application Load Balancer)** exposes the backend to the internet
- **GitHub Actions** automates both infrastructure and app deployment

---

## ✅ Features

- **One-click infrastructure provisioning** with Terraform via GitHub Actions
- **CI/CD pipeline** for Medusa Docker builds and ECS deployments
- **Secure secret handling** between GitHub and AWS
- **Cloud-native file service** with S3 and DynamoDB
- **Full GitOps workflow** – version-controlled infrastructure and deployments

---

## 🚀 Deployment Steps

1. Push Terraform code to the `infra/` folder  
   → Triggers `terraform.yml` for infrastructure provisioning

2. Push Medusa app code to `main`  
   → Triggers `medusa-deploy.yml` for container build and deployment


---

## 🛡️ Secrets Management

- **GitHub Secrets**: `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`
- **AWS Secrets Manager**: Stores runtime secrets like `DATABASE_URL`

---

## 📦 File Upload Handling

- **S3 Bucket**: Stores product images/files
- **DynamoDB Table**: Logs file upload metadata (e.g., filename, timestamp)

---

## ⚙️ CI/CD Workflows

- `terraform.yml`: Initializes, plans, and applies Terraform changes
- `medusa-deploy.yml`: Builds Docker image, pushes to ECR, updates ECS task

---

## 📌 Known Issue

At the time of testing, the **DNS/ALB endpoint was not functional**, although:

- ECS service was healthy
- Secrets loaded correctly
- File upload to S3 worked
- DynamoDB logging confirmed
- Both GitHub Actions workflows executed without errors

⚠️ If more time was available, the **DNS and ALB configuration would have been finalized** to allow public access via domain or friendly DNS name.

---

## 🔮 Future Improvements

- Add a frontend using **Next.js** or **Medusa Storefront**
- Integrate **Redis** for caching and background tasks

---

## 📎 Related Links

- [Medusa GitHub](https://github.com/medusajs/medusa)
- [Terraform Docs](https://developer.hashicorp.com/terraform/docs)
- [ECS Fargate](https://docs.aws.amazon.com/AmazonECS/latest/userguide/what-is-fargate.html)

---
