# 🛡️ Securing AWS Infrastructure: Terraform & Trivy Integration

### *Automated Security Hardening & Continuous Compliance*

This project demonstrates a security-first approach to deploying a **Next.js 15.5.5** application on AWS. By integrating **Trivy** into a **Jenkins CI/CD pipeline**, I identified critical misconfigurations in Terraform scripts and remediated them before deployment to ensure a hardened production environment.

---

## 🔍 Trivy Findings & Remediation Summary

I utilized Trivy IaC scanning to audit the Terraform code. Below are the key security improvements made:

* **Restricted SSH Access**
    * **Issue:** SSH was open to `0.0.0.0/0`, enabling brute-force attack risks.
    * **Remediation:** Restricted access to a **Trusted Admin IP** (SSM is recommended for production).
* **Enforced IMDSv2**
    * **Issue:** IMDSv1 exposure enabled potential IAM credential theft via SSRF.
    * **Remediation:** Enforced **IMDSv2** (Session-oriented tokens) for all EC2 instances.
* **Encrypted EBS Root Volumes**
    * **Issue:** Unencrypted volumes exposed sensitive data at rest.
    * **Remediation:** Enabled **AES-256 Encryption** on all root EBS volumes.
* **Least-Privilege Egress Rules**
    * **Issue:** Unrestricted outbound traffic allowed for potential data exfiltration.
    * **Remediation:** Locked down security groups to allow only necessary outbound traffic.

---

## 🛠️ Tools & Technologies

* **Frontend:** Next.js 15.5.5
* **Containerization:** Docker & Docker Compose
* **Infrastructure:** AWS (EC2, Security Groups, EBS, VPC)
* **Infrastructure as Code:** Terraform
* **Security Scanning:** Trivy (IaC & Container Scanning)
* **CI/CD Automation:** Jenkins
* **AI Support:** Generative AI (Deployment guidance & technical documentation)

---

## 🤖 Generative AI Integration

Generative AI was leveraged as a core technical partner to accelerate deployment, ensure security compliance, and polish project presentation:

* **AWS Navigation & Deployment:** Assisted in navigating the AWS Management Console for efficient EC2 provisioning and web app deployment.
* **Jenkins Pipeline Engineering:** Provided foundational logic and troubleshooting for the **complete Jenkins pipeline script**, ensuring successful integration of security gates.
* **Vulnerability Interpretation:** Assisted in converting complex Trivy JSON reports into actionable attack-scenario insights.
* **Documentation & README Optimization:** Assisted in transforming raw project notes and technical findings into professional, high-impact documentation (including this README) to ensure clarity and professional appeal.
* 📄 **[Proof of AI Usage](https://docs.google.com/document/d/1HwpBiEeaDJ15melxz_3ws6sp0K92F7UoQJgFw2g0ges/edit?usp=sharing)**

---

## 🚀 Deployment & Pipeline Evidence

The project features a **complete Jenkins Pipeline** for both successful and failed scenarios. The pipeline manages the entire lifecycle—from code linting and security scanning to final deployment.

* **Success Pipeline (Full Execution):** [View Documentation](https://docs.google.com/document/d/1YGdYcXPKUTyL8Xh4IrHj6sm6GyhGrf7w07ASPxrTa4U/edit?usp=sharing)
* **Failure Pipeline (Security Gate Triggered):** [View Documentation](https://docs.google.com/document/d/1iwfvw7cfSUUWu5aPzkTlX4aVt_9AzR8jufYfImnjCc4/edit?usp=sharing)
* **[Video of Successfull pipeline execution and cloud app deployment](https://drive.google.com/file/d/1LYbG13nxVKjYOrxYiP2Kv7KV7PQ4i8_M/view?usp=sharing)**

---

## 🔗 Public Access

* **Web App:** [http://54.234.71.97:3000/](http://54.234.71.97:3000/)
* **Video Web App Link:** [http://3.89.114.187:3000/](http://3.89.114.187:3000/)

---

## 📁 Repository Structure

### 🏗️ Terraform (IaC)
* `provider.tf`: Defines AWS provider and version requirements.
* `ec2.tf`: Hardened EC2 instance configuration with IMDSv2 and EBS encryption.
* `securitygroup.tf`: Least-privilege firewall rules for ingress and egress.
* `variable.tf`: Parameterized inputs for reusable infrastructure.
* `output.tf`: Exports critical data like Public IP and DNS.

### 🐳 Containerization
* `Dockerfile`: Optimized multi-stage build for the Next.js 15.5.5 application.
* `docker-compose.yaml`: Orchestrates the application environment for deployment.

### ⚙️ Automation
* `Jenkinsfile`: Complete CI/CD logic including Trivy security gates and automated deployment.