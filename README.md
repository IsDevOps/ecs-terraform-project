# ECS Terraform Project

## Overview
Deploys a Flask application to AWS ECS using Terraform and a GitHub Actions CI/CD pipeline.

## Prerequisites
1. AWS CLI and Docker installed.
2. Terraform installed.
3. Add GitHub to secrets:
   - `DOCKER_USERNAME`
   - `DOCKER_PASSWORD`
4. Add AWS credentials to the secret:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
5. Replace the S3 bucket name 
6. Create Dynamodb and replace the table name on ```bash backend.tf ````.


## Steps
1. Clone the repository.

2. Create a repository and push.
    ```bash
        git init
        git add .
        git commit -m "commit message"
        git push origin master
    ```
3. Push code to the `master` and select the workflow to prompt terraform action to perform.
   ```bash
   Apply
   Destroy
   ```
3. Access the application via the ALB URL.
