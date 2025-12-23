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
* **AI Support:** Generative AI (Security analysis and code validation)

---

## 🤖 Generative AI Integration

Generative AI was leveraged as a core security supporting tool throughout the project lifecycle:

* **Vulnerability Interpretation:** Assisted in converting complex Trivy JSON reports into actionable attack-scenario insights.
* **Best Practice Validation:** Cross-referenced Terraform remediations against the AWS Well-Architected Framework.
* **Code Hardening:** Assisted in generating secured HCL snippets for encryption and metadata protection.
* 📄 **[Proof of AI Usage](https://docs.google.com/document/d/1HwpBiEeaDJ15melxz_3ws6sp0K92F7UoQJgFw2g0ges/edit?usp=sharing)**

---

## 🚀 Deployment & Pipeline Evidence

The project features a **complete Jenkins Pipeline** that manages the entire lifecycle—from code linting and security scanning to deployment. The pipeline includes a "Security Gate" that automatically terminates the build if Trivy detects high-severity issues.

* ✅ **Success Pipeline (Full Execution):** [View Documentation](https://docs.google.com/document/d/1YGdYcXPKUTyL8Xh4IrHj6sm6GyhGrf7w07ASPxrTa4U/edit?usp=sharing)
* ❌ **Failure Pipeline (Security Gate Triggered):** [View Documentation](https://docs.google.com/document/d/1iwfvw7cfSUUWu5aPzkTlX4aVt_9AzR8jufYfImnjCc4/edit?usp=sharing)
* 🎥 **[Video Demo & Walkthrough](https://drive.google.com/file/d/1LYbG13nxVKjYOrxYiP2Kv7KV7PQ4i8_M/view?usp=sharing)**

---

## 🔗 Public Access

* **Web App:** [http://54.234.71.97:3000/](http://54.234.71.97:3000/)
* **Public DNS:** [AWS EC2 Endpoint](https://ec2-54-234-71-97.compute-1.amazonaws.com/)

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
* `docker-compose.yaml`: Orchestrates the application environment for local development and deployment.

### ⚙️ Automation
* `Jenkinsfile`: The full CI/CD logic including Trivy security gates and automated deployment.