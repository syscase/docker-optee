FROM syscase/optee-base
LABEL version="2.6.0-0.5.0-1"
USER root

COPY setup/sync /root/setup/sync

RUN /root/setup/sync

COPY setup/build /root/setup/build
RUN /root/setup/build

USER syscase
WORKDIR /home/syscase/optee

CMD ["/usr/bin/zsh", "--login"]
