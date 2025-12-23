# 🛡️ Securing AWS Infrastructure: Terraform & Trivy Integration

### *Automated Security Hardening & Continuous Compliance*

This project demonstrates a security-first approach to deploying AWS infrastructure. By integrating **Trivy** into a **Jenkins CI/CD pipeline**, I identified critical misconfigurations in Terraform scripts and remediated them before deployment to ensure a hardened production environment.

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

* **Infrastructure:** AWS (EC2, Security Groups, EBS, VPC)
* **Infrastructure as Code:** Terraform
* **Security Scanning:** Trivy (Vulnerability & Misconfiguration Scanning)
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

The infrastructure is managed through a Jenkins pipeline that enforces a "Security Gate." If Trivy detects high-severity issues, the build is automatically terminated to prevent insecure deployments.

*  **Success Pipeline:**:-(https://docs.google.com/document/d/1YGdYcXPKUTyL8Xh4IrHj6sm6GyhGrf7w07ASPxrTa4U/edit?usp=sharing)
*  **Failure Pipeline (Security Gate):**:-(https://docs.google.com/document/d/1iwfvw7cfSUUWu5aPzkTlX4aVt_9AzR8jufYfImnjCc4/edit?usp=sharing)
*  **[Video Demo & Walkthrough](https://drive.google.com/file/d/1LYbG13nxVKjYOrxYiP2Kv7KV7PQ4i8_M/view?usp=sharing)**

---

## 🔗 Public Access

* **Web App:** [http://54.234.71.97:3000/](http://54.234.71.97:3000/)
* **Video App link:** [http://3.89.114.187:3000/](http://3.89.114.187:3000/)

---
