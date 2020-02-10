# How to use this
# 1. Download p4v from https://www.perforce.com/downloads/helix-visual-client-p4v
# 2. Put it into the same folder with Dockerfile.
# 3. Rename it to "p4v.tgz"
# 4. >> docker build -t cloud-center-docker:v1 .
# 5. >> docker run -dit -p 1111:22 cloud-center-docker:v1
# 6. Download and launch Xming on Windows
# 7. Download PuTTY on Windows
#       Connect using Putty:
#           IP: Localhost
#           Port: The port you mapped from >> docker run -dit -p 1111:22 cloud-center-docker:v1, here is 1111
#           X11: Enabled
# 8. Use PuTTY to connect
# 9. Username: root     Password: root
# 10. >> cd /root/p4v.../bin   
# 11. >> ./p4v
# 12. In p4v: server: perforce.mathworks.com:1666
# 13. Mount from local to container
    # Go to your local workspace
    # >> docker run -dit -v ${PWD}:/usr/local/golang-workspace/src -p 1111:22 cloud-center-docker:v1




FROM debian:latest

# For Windows, download and launch Xming

# Set up ssh and X11
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
RUN apt install -y x11-common
RUN apt install -y xserver-xorg
RUN apt install -y xorg
RUN apt install -y gnome
RUN apt install -y libxkbcommon-x11-0
# 4. SSH into the container 
# 5. >> cd /root/p4v.../bin
# 6. >> ./p4v



# Start the ssh service 
CMD ["/usr/sbin/sshd", "-D"]

