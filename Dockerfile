FROM jupyter/scipy-notebook:latest

USER root

# Install system dependencies
RUN apt-get update \ 
    && apt-get upgrade -y

# Install dependencies
RUN apt-get install -y \
    ffmpeg imagemagick build-essential chromium-chromedriver
    
# Update pip
RUN pip install --upgrade pip

# Install ImageMagick policy
RUN cat /etc/ImageMagick-6/policy.xml | sed 's/none/read,write/g'> /etc/ImageMagick-6/policy.xml

# Allow passwordless sudo for the jovyan user
RUN echo "jovyan ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $NB_UID