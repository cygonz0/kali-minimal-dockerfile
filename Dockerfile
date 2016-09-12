# Dockerfile build image for kali light-weight testing
# Jerold Hoong (jerold@v00d00sec.com)

FROM kalilinux/kali-linux-docker

# Hack to prevent hash-mismatch error if behind proxy
COPY 99fixbadproxy /etc/apt/apt.conf.d/
COPY fish-shell.deb /root/fish-shell.deb

# RUN routine
RUN \
  cd /tmp && mkdir docker_tmp && cd docker_tmp && \
  apt-get update && \
  apt-get install -y apt bc gettext-base man-db fontconfig powerline && \
  dpkg -i ~/fish-shell.deb && \
  apt-get install -y nmap hydra john tcpdump metasploit-framework sqlmap fierce dnsrecon wpscan dirb python-pip git && \
  rm -rf /var/lib/apt/lists/*

# Define default command if required, eg:
# CMD ["cmd_goes_here"]

# Ports to be exposed
EXPOSE 80
EXPOSE 8000
EXPOSE 31337