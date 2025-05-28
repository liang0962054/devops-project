# Terraform Lab Exercises

This folder contains a series of hands-on exercises designed to enhance understanding and proficiency with Terraform. 
Each exercise focuses on different aspects of infrastructure as code, providing practical experience in deploying and managing resources.

---

### Exercise 1: Fetching an AMI ID with Data Sources  
**Goal:** Learn how to use a Terraform _data source_ to look up existing information (an EC2 AMI ID) instead of hard-coding it.  
- `InstID.tf` defines a `data "aws_ami"` block with filters (e.g., name, owner) to locate the latest Ubuntu AMI.  
- An `output` block prints `data.aws_ami.amiid.id`.  

---

### Exercise 2: Launching an EC2 with Key Pair & Security Group
**Goal:** Create all the resources needed to launch a Linux EC2 instance:
- Provider (`provider.tf`)
- Key pair (`keypair.tf`) generated via `ssh-keygen` and pushed with `aws_key_pair`
- Security group (`security-group.tf`) with SSH (22) and HTTP (80) ingress and open egress 
- Instance (`instance.tf`) referencing the above and tagging the resource 

---

### Exercise 3: Using Variables & a Map for Multi-Region AMIs
**Goal:** Parameterize code with variables and use a map to select the right AMI per region.
- `vars.tf` declares variable `"region"` and variable `"zone1"`, and a map variable `"amiID" { type = map(string) ... }` 
- `provider.tf` and `instance.tf` replace hard-coded values with `var.region`, `var.zone`, and `var.amiID[var.region]`.

---

### Exercise 4: Provisioners (file & remote-exec)
**Goal:** Learn Terraform provisioners to push and run a setup script on EC2.
- Add a `file provisioner` in `instance.tf` to upload `web.sh` to `/tmp/web.sh`.
- Add a `remote-exec provisioner` (with SSH connection using `var.webuser` and `file("dovekey")`) to run the script.

---

### Exercise 5: Outputs & Local-Exec
**Goal:** Extract attributes via `output` blocks and use a `local-exec provisioner` to write them to a file:
- In `instance.tf`, define `outputs` for `webPrivateIP`.
- Add a `local-exec provisioner` that echo `self.private_ip` into `private_ips.txt`. 

---

### Exercise 6: Remote State with an S3 Backend
**Goal:** Move Terraform state off local machine into an S3 bucket for team collaboration.
- Add `backend` "s3" config in `backend.tf` (bucket, key, region).
- Re-initialize Terraform (terraform init) to migrate state remotely.

---

This project is part of my DevOps learning journey using materials from the Udemy course [DevOps: Beginner to Advanced](https://www.udemy.com/course/decodingdevops/) by Imran Teli. 
