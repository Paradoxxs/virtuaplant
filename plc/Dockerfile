FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy
LABEL maintainer="Paradoxxs"

ENV TITLE="OT plant"

WORKDIR /app
RUN chown -R abc /app


# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    wget \
    build-essential \
    git \
    gcc \
    libc6 \
    libc6-dev \
    libkrb5-dev \
    python2.7-dev \
    xvfb \
    alsa-utils \
    libgirepository1.0-dev \
    libcairo2-dev \
    gir1.2-gtk-3.0 \
    && rm -rf /var/lib/apt/lists/*

# Add deadsnakes PPA and install Python 2.7
RUN add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y python2.7

# Install pip for Python 2.7
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py && \
    python2.7 get-pip.py && \
    rm get-pip.py

# Create a symbolic link for python to python2.7
RUN ln -s /usr/bin/python2.7 /usr/bin/python

# Clone the repository into /app/virtuaplant
RUN git clone https://github.com/Paradoxxs/virtuaplant /app/virtuaplant

# Install Python dependencies
RUN pip install -r /app/virtuaplant/requirements.txt
RUN pip install pygame pygobject
ENV TERM linux



VOLUME /config
# Set the working directory and define the entrypoint
COPY /root /

# Expose the required ports
EXPOSE 5020
EXPOSE 3000

RUN chmod 777 /app/virtuaplant/plants/bottle-filling/start_plc.sh
