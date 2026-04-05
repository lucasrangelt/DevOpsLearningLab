# Introduction

How to build a scalable system for an app? In this project, we'll integrate multiple tools to achieve a solid and ideal infrastructure.

## Setup and instructions to run it:

First things first: bear in mind that this project is supposed to be run on either Linux or WSL2 (for Windows). Make sure to clone it into a Linux-based folder.

1. Install Docker (+ Docker Compose)
2. Run `git clone https://github.com/lucasrangelt/DevOpsLearningLab.git`
3. Run the "setup.sh" file and use the credentials there to access the UIs of ArgoCD and Jenkins on your web browser.
4. Create and configure global tokens for Docker, GitHub and Jenkins regarding your project and name them to match the script of their respective tools' files.
5. Build your image.

Observation: After running "minikube start", the command "eval $(minikube docker-env)" is needed so your Docker stops communicating with the container of "minikube" and starts communicating with the docker engine inside of that container. It must be run everytime you start a new terminal.

### System Architecture Diagram

...

# Chosen Tools

### Coding
- I used **VS Code** as my programming IDE for many languages like **Python**, **Yaml**, etc.
- I used **Python** to write the "main.py" file.

### Infrastructure
- I used **WSL2** (Windows Subsystem for Linux) as a development environment, due to its superior speed and the fact that it is Docker's native engine.
- I used **Docker** to solve local and global dependency issues (dependency hell) and allow it to be executed on any machine.
- I used **Bash Scripts** to set up the environment from zero for anyone wishing to test it out, including co-workers and other team members.
- I used **Helm** and **Honeybrew** to install and hold multiple dependencies.
- I used **Terraform** in order to create infrastructure as code (IaC), making sure everything is built in the same way for every machine.
- I used **Minikube** which is basically Kubernetes for a single computer.
- I used **ArgoCD** as my CD tool to automate the deployment of applications, making sure that the live state of the clusters and pods match the desired state specified in the code.
- I used **Jenkins** as my CI tool to trigger "builds" in order to compile the code on GitHub and spot any possible bugs.

### Cloud and Security
- I used **GitHub** to host my project for everyone's visibility and accessibility, as well as for creating tokens for Jenkins.

**My e-mail: lucasrangel2011@gmail.com**

**My LinkedIn: https://www.linkedin.com/in/lucas-rangel-tietbohl-29791237b/**

To see the step-by-step development process and my learning journey as well as credits, references and extras, check out the [Journal](Journal.md)