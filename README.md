# Highly Scalable Dynamic Web Application on AWS - DevOps Project

## Project Overview

This project focuses on deploying a highly scalable dynamic web application on AWS using best practices for infrastructure as code, scalability, security, and reliability. The application utilizes a **three-tier architecture** comprising public, app, and database tiers. The deployment leverages multiple AWS services such as **EC2**, **RDS**, **Auto Scaling Groups**, **Application Load Balancer**, and **S3** for a seamless, fault-tolerant, and highly available architecture.

This readme will guide you through the architecture, deployment steps, and configuration for replicating this setup on your AWS environment.

![Alt text](/architecture.png)

## Architecture Overview

The project is built around a **three-tier architecture** that divides the application into three distinct layers:

- **Public Tier**: Houses infrastructure components such as the **NAT Gateway**, **Application Load Balancer**, and other publicly accessible resources.
- **Application Tier**: Consists of EC2 instances hosting the web servers, located within private subnets for enhanced security.
- **Database Tier**: Leverages **Amazon RDS** for the database management system, ensuring high availability and fault tolerance.

### Key Components

1. **Virtual Private Cloud (VPC)**:
   - Configured with both **public** and **private** subnets that span across **two Availability Zones** for fault tolerance and high availability.

2. **Internet Gateway**:
   - Enables connectivity between the VPC instances and the internet for public-facing resources.

3. **Security Groups**:
   - Serve as a network firewall mechanism to protect instances within the VPC by allowing only authorized traffic.

4. **Auto Scaling Group**:
   - Automatically manages EC2 instances, ensuring the scalability, availability, and fault tolerance of the web application.

5. **EC2 Instances**:
   - Deployed within **Private Subnets** for enhanced security, running web servers that host the dynamic web application.

6. **Application Load Balancer**:
   - Distributes incoming web traffic across EC2 instances within an Auto Scaling Group to improve performance and ensure high availability.

7. **NAT Gateway**:
   - Allows EC2 instances in the private subnets to access the internet while keeping them secure from direct external access.

8. **Amazon RDS**:
   - Used for database management with automatic scaling and backup capabilities. The database is prepopulated using a **database migration** process from an existing dataset.

9. **Amazon Route 53**:
   - Manages DNS records and connects the registered domain to AWS resources, ensuring the application is accessible via a custom domain.

10. **S3**:
    - Stores the application code and other static files securely and is integrated into the deployment pipeline.

11. **Simple Notification Service (SNS)**:
    - Sends alerts related to the Auto Scaling Group's activities to notify of any instance scaling events.

12. **Terraform**:
    - Defines all components of the architecture, enabling reproducible, infrastructure-as-code deployments. The configuration includes reusable modules for the various components of the application.

## Project Setup and Prerequisites

To replicate this setup and deploy the application, follow these steps:

### Prerequisites

1. **AMI Configuration**:
   - You need an **AMI (Amazon Machine Image)** of the project. Create an EC2 instance, configure environment variables, and create an AMI for the image to be used during the deployment process.

2. **RDS Snapshot**:
   - Prepare an **RDS snapshot** of your existing database. This snapshot will be used to restore the database to **Amazon RDS**, ensuring that your application has prepopulated data after deployment.

3. **Terraform**:
   - Install **Terraform** to manage infrastructure as code and define the architecture components. You'll also need to configure AWS credentials for Terraform to deploy resources.

4. **Domain Registration**:
   - Register a domain name with an external DNS provider. This domain should be connected to **Amazon Route 53**, where you can configure DNS records for routing traffic to your application.

### Steps to Deploy

1. **Clone the Repository**:
   - Clone the GitHub repository which contains the reference architecture diagram and deployment scripts.

2. **Terraform Configuration**:
   - Navigate to the Terraform configuration files in the repository and initialize the Terraform environment:
     ```bash
     terraform init
     ```
   - Apply the configuration to deploy all necessary AWS resources:
     ```bash
     terraform apply
     ```

3. **AMI and EC2 Instances**:
   - Ensure that the **AMI** for the web application is created and used for provisioning EC2 instances in the Auto Scaling Group.

4. **Database Migration**:
   - Restore the **RDS snapshot** to the newly created Amazon RDS instance, ensuring that the web application has prepopulated data after deployment.

5. **Configure Load Balancer**:
   - Set up the **Application Load Balancer** to distribute incoming traffic evenly across the EC2 instances in the Auto Scaling Group.

6. **Configure DNS**:
   - Set up DNS records in **Amazon Route 53** to route traffic from your domain name to the Application Load Balancer.

7. **Enable HTTPS**:
   - Configure **AWS Certificate Manager** to secure application communications using HTTPS.

8. **Set Up SNS Alerts**:
   - Configure **Simple Notification Service (SNS)** to receive notifications for Auto Scaling activities.

### Monitoring and Alerts

- Use the **SNS** service to configure notifications for Auto Scaling Group activities such as scaling in or scaling out events.
- Monitor application performance and ensure that **CloudWatch Logs** are integrated for debugging and insights into application behavior.

## Conclusion

This project sets up a highly available and scalable web application infrastructure on AWS using best practices for security, fault tolerance, and scalability. By utilizing **AWS services** such as **EC2**, **RDS**, **Auto Scaling**, and **Route 53**, the deployment ensures a reliable and secure environment for hosting the dynamic web application. With the use of **Terraform**, the entire infrastructure is defined as code, making it easily reproducible and manageable.

---

Feel free to contribute or raise issues in the repository if you encounter any challenges while deploying or configuring the environment.
