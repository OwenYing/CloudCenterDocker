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
# Set up Salesforce