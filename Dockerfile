FROM balenalib/raspberry-pi-debian-python:latest

WORKDIR /usr/src/app

# Prereqs
RUN apt-get update -qq && \
    apt-get upgrade -qq && \
    curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy files into place
COPY docker2mqtt .

# Set the entrypoint
ENTRYPOINT ["/usr/src/app/docker2mqtt"]
