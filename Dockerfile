FROM debian:latest

# For Windows, download and launch Xming

# Set up X11
RUN apt update
RUN apt install -y sudo
RUN apt install -y openssh-server
RUN systemctl enable ssh
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "X11Forwarding yes" >> /etc/ssh/sshd_config
RUN echo "X11DisplayOffset 10" >> /etc/ssh/sshd_config
RUN echo "X11UseLocalhost no" >> /etc/ssh/sshd_config
RUN service ssh start
RUN echo "root:root" | chpasswd

# Connect using Putty:
#     IP: Localhost
#     Port: The port you mapped from >> docker run -dit -p 1111:22 cloud-center-docker:v1
#     X11: Enabled



# Set up Salesforce

# 1. Download p4v from https://www.perforce.com/downloads/helix-visual-client-p4v
# 2. Put it into the same folder with Dockerfile.
# 3. Rename it to "p4v.tgz"
COPY . /root
WORKDIR /root
RUN tar -xvzf p4v.tgz
RUN apt install -y libxkbcommon-x11-0
# 4. SSH into the container 
# 5. >> cd /root/p4v.../bin
# 6. >> ./p4v



# Start the ssh service 
CMD ["/usr/sbin/sshd", "-D"]


# Starting container command
# docker run -dit -p 1111:22 cloud-center-docker:v1