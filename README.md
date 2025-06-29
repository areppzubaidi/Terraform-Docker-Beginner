## 🚀 Terraform + Docker Beginner Project

This project uses **Terraform** to automatically:

* Pull the latest **Nginx Docker image**
* Run an Nginx container
* Expose it on **port 8080**
* Serve a basic web page on `http://localhost:8080`

---

## 📁 Project Structure

```
terraform-docker-nginx/
├── main.tf          # Terraform config file
└── README.md        # You're here
```

---

## 🧰 Prerequisites

* [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
* [Docker Desktop](https://www.docker.com/products/docker-desktop) running
* Internet connection (to pull Docker image)

---

## 🛠️ How to Use

### 1. Clone or create the directory:

```bash
mkdir terraform-docker-nginx && cd terraform-docker-nginx
```

### 2. Create the `main.tf` file:

```bash
touch main.tf
# Paste the Terraform code into it
```

### 3. Initialize Terraform:

```bash
terraform init
```

### 4. Preview the changes:

```bash
terraform plan
```

### 5. Apply the config:

```bash
terraform apply
```

> Type `yes` when prompted.

---

## 🌐 Access the Web Server

Open your browser and go to:
📍 `http://localhost:8080`

You should see the **default Nginx welcome page**.

---

## 🧹 To Destroy the Container

When you're done:

```bash
terraform destroy
```

---

## 🧠 What You Learn

* Basics of Terraform providers and resources
* How to pull and run Docker containers with Terraform
* Mapping ports between host and container
* Idempotent infrastructure as code

---

## 🔁 Want More?

Here are ideas to extend this:

* Mount a custom `index.html` file into Nginx
* Run multiple containers (e.g., Redis, MySQL)
* Add variables for image name and port
* Use outputs to print the container IP or port

---

Happy automating with Terraform + Docker! 🐳📦

Let me know if you’d like a `variables.tf` or `index.html` version next!
