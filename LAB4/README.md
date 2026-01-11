Static Website Hosting on AWS S3 with CloudFront using Terraform
This project demonstrates how to deploy a secure, scalable, and globally distributed static website using Amazon S3, CloudFront, and Terraform. The entire infrastructure is provisioned as code, following Infrastructure as Code (IaC) best practices.

Project Overview
The solution creates an Amazon S3 bucket to store static website files (index.html and error.html) and configures it for website hosting. To improve performance, security, and availability, an Amazon CloudFront distribution is placed in front of the S3 bucket. Access to the S3 bucket is restricted using a CloudFront Origin Access Identity (OAI) so that content can only be served through CloudFront.
The website includes custom styling with a background image and color overlay, making it visually appealing while maintaining fast load times via CDN caching.

Technologies Used
Terraform – Infrastructure as Code
Amazon S3 – Static website storage
Amazon CloudFront – Content Delivery Network (CDN)
AWS IAM (OAI) – Secure access control
HTML & CSS – Website content and styling

Architecture
Terraform creates a uniquely named S3 bucket.
Static website files are uploaded to the bucket.
CloudFront is configured with the S3 bucket as the origin.
Origin Access Identity ensures the S3 bucket is not publicly accessible.
CloudFront serves content globally over HTTPS with caching.

Outputs
S3 Bucket Name – Stores website files
CloudFront URL – Public URL to access the website globally