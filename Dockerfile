FROM postgres:11.10

LABEL maintainer="Mykyta Pashura <rowdyswa@gmail.com>"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    python3.8 \
    python3-setuptools \
    python3-pip \
    supervisor \
	syslog-ng \
    && rm -rf /var/lib/apt/lists/*


RUN pip install --upgrade pip
RUN pip install -r requirements.pip


