FROM ubuntu:noble

ENV LANG en_US.UTF-8

COPY ./install.sh /etc/install.sh
RUN chmod +x /etc/install.sh \
    && bash /etc/install.sh

ENTRYPOINT [ "/bin/bash", "-c", "/usr/bin/jenkins" ]