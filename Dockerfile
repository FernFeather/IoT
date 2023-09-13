# Use the official Jenkins LTS image as the base image
FROM jenkins/jenkins:lts

# Switch to root user to perform installation
USER root

# Update the system and install required packages
RUN apt-get update

# Install Docker within the container
RUN curl -sSL https://get.docker.com/ | sh
