**Securing AWS Infrastructure and Web-App Deployment with Terraform & Trivy**

# Trivy Findings & Remediation Summary
SSH was open to 0.0.0.0/0, enabling brute-force attacks, and was restricted to a trusted admin IP (SSM recommended for prod).
IMDSv1 exposure enabled potential IAM credential theft and was remediated by enforcing IMDSv2.
An unencrypted root EBS volume exposed data at rest and was fixed by enabling encryption.
Unrestricted egress allowed data exfiltration risks and was locked down using least-privilege rules.

# Secure Terraform Highlights

IP-restricted SSH access
IMDSv2 enforcement
Encrypted EBS root volumes
Least-privilege security group egress

# Use of Generative AI

Generative AI was used as a supporting security tool.
Assisted in interpreting Trivy findings in real-world attack scenarios.
Helped validate Terraform remediations against AWS best practices.
Helped in assessing the report, provided clarity and security justification.
Assisted in code correction and provided a secured terraform remediation code.
**Proof for the use of Gen AI will be provided in the image section.**

# Tools & Technologies

Terraform
Trivy (IaC scanning)
AWS EC2 & Security Groups
Jenkins (CI integration)
Generative AI (security analysis support)

# Public IP & Public DNS
http://54.234.71.97:3000/
https://ec2-54-234-71-97.compute-1.amazonaws.com/

# Attachments:-
Jenkins pipeline successfull execution.txt= in github repo
Jenkins Pipeline script.txt= in github repo
Jenkins pipeline failure= in github repo

# Image link
Usage of Gen AI:-https://docs.google.com/document/d/1HwpBiEeaDJ15melxz_3ws6sp0K92F7UoQJgFw2g0ges/edit?usp=sharing
Jenkins pipeline Fails:-https://docs.google.com/document/d/1iwfvw7cfSUUWu5aPzkTlX4aVt_9AzR8jufYfImnjCc4/edit?usp=sharing
Jenkins pipeline success:-https://docs.google.com/document/d/1YGdYcXPKUTyL8Xh4IrHj6sm6GyhGrf7w07ASPxrTa4U/edit?usp=sharing

# Video link

