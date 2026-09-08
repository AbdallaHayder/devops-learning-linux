# Networking Project - Commands Used

This file contains the main Linux, SSH, web server and DNS commands used during the networking project.

## SSH Key Setup

The EC2 private key was stored in the local SSH directory and restricted so that only the owner could read it.

```bash
mv ~/Downloads/networking-nginx-key.pem ~/.ssh/
chmod 400 ~/.ssh/networking-nginx-key.pem
```

Check the permissions:

```bash
ls -l ~/.ssh/networking-nginx-key.pem
```

## Connect to the EC2 Instance

Connected to the Ubuntu EC2 instance using its public IPv4 address:

```bash
ssh -i ~/.ssh/networking-nginx-key.pem ubuntu@16.171.143.25
```

Verify the logged-in user and EC2 hostname:

```bash
whoami
hostname
```

## Update Package Information

Updated the Ubuntu package index:

```bash
sudo apt update
```

## Install NGINX

```bash
sudo apt install nginx -y
```

## Check NGINX Status

```bash
sudo systemctl status nginx
```

Expected result:

```text
Active: active (running)
```

## Test NGINX Locally

From inside the EC2 instance:

```bash
curl localhost
```

This sends an HTTP request to the NGINX server running on the same machine.

## Test the Public Web Server

The NGINX server was tested in a browser using the EC2 public IPv4 address:

```text
http://16.171.143.25
```

## Verify DNS Resolution

After creating the Cloudflare A record:

```bash
dig abdallahhayder.uk
```

The DNS answer returned:

```text
abdallahhayder.uk.    300    IN    A    16.171.143.25
```

This confirmed that the domain was resolving to the EC2 public IPv4 address.

## Test the Domain

Finally, the NGINX server was accessed through:

```text
http://abdallahhayder.uk
```

The NGINX welcome page loaded successfully, confirming the complete path:

```text
Domain -> DNS -> EC2 Public IP -> TCP Port 80 -> NGINX
```
