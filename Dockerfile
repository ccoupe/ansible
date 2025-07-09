FROM python:3.11-slim-bookworm
RUN apt update && apt install -y openssh-client sshpass avahi-daemon
RUN pip install ansible-core
