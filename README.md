# Documentation

This project hosts a simple static webpage (HTML + CSS) using **Nginx inside a Docker container** on a **Raspberry Pi**. It’s intended for use in a local network, such as displaying a captive portal or a custom landing page.


### 1. Install Required Packages

First, update your package list and install `git` and `curl`:

> sudo apt update && sudo apt install -y git curl

### 2. Install Docker and Docker Compose (Official Method)

Use the official Docker installation script:

> curl -fsSL https://get.docker.com -o get-docker.sh \
> sudo sh get-docker.sh \
> sudo apt-get install -y docker-compose-plugin \

Important: You must reboot your Raspberry Pi after this step to apply Docker group permissions:

> sudo reboot

### 3. Clone This Repository

After rebooting, clone this GitHub repo and navigate into the project folder:

> git clone https://github.com/tamusandesh99/captive-portal.git \
> cd captive-portal

### 4. Start the Docker Container

Make sure the setup script is executable by running chmod, then execute it:

> chmod +x setup.sh stop.sh \
> ./setup.sh

This will use Docker Compose to start a container that serves your site via Nginx.

### 5. View the site in Browser

Find your Raspberry Pi’s local IP address:

> hostname -I

Then open a browser from any device on the same Wi-Fi/network and visit:

> http://<your-pi-ip>:8080

Example:

http://192.168.0.101:8080


### 6. Stop the site
 > ./stop.sh