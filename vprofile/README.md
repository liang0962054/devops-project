# V Profile Project (Local Setup)

This project sets up a **multi-tier web application stack** locally using Vagrant and VirtualBox. The application mimics a social networking site and includes several interdependent services such as Nginx, Tomcat, MySQL, Memcached, and RabbitMQ. 

---

## 🏗️ Architecture Overview

This project provisions **five virtual machines** using Vagrant, each running a different service in the stack:

- **Nginx** – Acts as a load balancer, forwarding requests to the application server.
- **Tomcat** – Hosts the Java-based social networking web application.
- **RabbitMQ** – Message broker included for practice and added complexity.
- **Memcached** – Caching layer to improve database performance.
- **MySQL** – Relational database storing user data and login information.

---

## 🔧 Tools Used

- **Vagrant** – Infrastructure provisioning and automation.
- **VirtualBox** – Hypervisor to run virtual machines.
- **Git Bash / Terminal** – For running CLI commands and managing code.
- **Text Editor / IDE** – Any editor of your choice (Sublime Text, VS Code, etc.)

---

This project is part of my DevOps learning journey using materials from the Udemy course [DevOps: Beginner to Advanced](https://www.udemy.com/course/decodingdevops/) by Imran Teli. 
