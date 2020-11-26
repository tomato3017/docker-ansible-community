FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python3-pip openssh-client && apt-get clean
RUN pip3 install pip --upgrade
RUN pip3 install ansible
RUN ansible-galaxy collection install community.general

CMD ["/usr/local/bin/ansible-playbook"]