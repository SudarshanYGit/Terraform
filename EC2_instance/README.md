<h1><b>Launch EC2 Instances Using Terraform<b></h1><br>

This project demonstrates how to launch AWS EC2 instances using Terraform.
It creates a security group, launches a first EC2 instance, creates an AMI from it, and then launches a second EC2 instance from that AMI. The setup follows Infrastructure as Code (IaC) best practices.<br>

🛠️ Technologies Used<br>
Terraform<br>
AWS EC2<br>
AWS Security Groups<br>
Amazon Machine Image (AMI)⚙️ Terraform Components<br>
Provider: AWS<br>
Resources:<br>
Security Group (SSH & HTTP access)<br>
First EC2 Instance<br>
AMI created from first EC2<br>
Second EC2 Instance launched from AMI<br>

Output<br>
First EC2 Public IP<br>
Second EC2 Public IP<br>
Instance Name Tags<br>
AMI created successfully<br>
![alt text](image.png)