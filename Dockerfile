FROM debian

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






# Start the ssh service 
CMD ["/usr/sbin/sshd", "-D"]


# Starting container command
# docker run -dit -p 1111:22 cloud-center-docker:v1