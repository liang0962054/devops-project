# Vagrant VM Projects (Mac M2 Compatible)

This folders contains 7 individual Vagrant projects designed to help learn server provisioning, web setup, and Infrastructure as Code (IaC) concepts. All projects are tested on Mac M2 chips and work with Ubuntu and CentOS images.

---

## Projects Overview

### 1. centos
A basic Vagrant project to provision a CentOS-based virtual machine. This project introduces how to bring up and access a CentOS VM using Vagrant, forming the foundation for future automation work.

### 2. ubuntu
A simple Vagrant project to provision an Ubuntu-based virtual machine. It focuses on automating the initial setup of an Ubuntu server environment for DevOps practice.

### 3. website
This project provisions a single VM and sets up a basic finance-themed website. All configuration is done manually after the VM is up, providing hands-on experience with web server setup.

commands run in vm for website setup:
```bash
yum install httpd wget vim unzip zip -y
systemctl start httpd
systemctl enable httpd
ip addr show

firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --get-active-zones
firewall-cmd --permanent --zone=public --add-port=80/tcp
firewall-cmd --reload

wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip
unzip 2135_mini_finance.zip
cd 2135_mini_finance
cp -r * /var/www/html/

systemctl restart httpd
```

### 4. wordpress
Provisions a single VM and manually installs WordPress with its required dependencies. This project demonstrates the manual setup process of a LAMP stack and a WordPress instance.

commands run in vm for wordpress setup:
```bash
sudo -i 
vim /etc/hostname
hostname wordpress

## then, follow the steps mentioned in https://ubuntu.com/tutorials/install-and-configure-wordpress#1-overview
```

### 5. websiteIAC
An Infrastructure as Code (IaC) version of the `website` project. All setup steps, including package installation and server configuration, are automated using Vagrant provisioning script.

### 6. wordpressIAC
Transforms the manual `wordpress` project into a fully automated IaC setup. The provisioning script installs Apache, MySQL, PHP, and configures WordPress automatically using Vagrant provisioning script.

### 7. multivm
An advanced Vagrant project that provisions three virtual machines at once. This setup is useful for simulating multi-node environments such as app-server-db architectures or clusters.

---

## vagrant commands

Each project folder contains its own `Vagrantfile` and optional provisioning script (for IaC projects). To launch any VM:

```bash
cd <project-folder>
vagrant up
```

To destroy the VM:

```bash
vagrant destroy
```

To SSH into the VM:
```bash
vagrant ssh
```
---
This project is part of my DevOps learning journey using materials from the Udemy course [DevOps: Beginner to Advanced](https://www.udemy.com/course/decodingdevops/) by Imran Teli. 
