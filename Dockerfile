# Dockerfile build image for kali light-weight testing
# Jerold Hoong (jerold@v00d00sec.com)

FROM kalilinux/kali-linux-docker

# Hack to prevent hash-mismatch error if behind proxy
COPY 99fixbadproxy /etc/apt/apt.conf.d/
# Copy fish shell deb package
COPY fish-shell.deb /root/fish-shell.deb
# Copy gdbinit file for gdb-peda
COPY gdbinit /root/.gdbinit

# RUN routine
RUN \
  cd /tmp && mkdir docker_tmp && cd docker_tmp && \
  apt-get update && \
  apt-get install -y apt bc gettext-base man-db fontconfig powerline && \
  dpkg -i /root/fish-shell.deb && \
  apt-get install -y nmap hydra john tcpdump metasploit-framework sqlmap fierce dnsrecon wpscan dirb python-pip git nginx sslscan dnsenum dnsmap p0f joomscan davtest wfuzz sipvicious sslstrip gpp-decrypt patator wordlists powersploit enum4linux onesixtyone apktool dex2jar smali dos2unix ridenum jad webshells smbclient nbtscan snmpcheck dnsutils mysql-server rsh-client gdb git && \
  git clone https://github.com/longld/peda.git /root/peda && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /root/fish-shell.deb && \
  rm -rf /tmp/docker_tmp

# Define default command if required, eg:
# CMD ["nginx -g 'daemon off;'"]

# Ports to be exposed
EXPOSE 53
EXPOSE 80
EXPOSE 443
EXPOSE 4444
EXPOSE 8000
EXPOSE 8080
EXPOSE 8443
EXPOSE 31337
