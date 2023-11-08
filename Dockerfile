FROM steamcmd/steamcmd:ubuntu

RUN apt update
RUN apt install -y telnet

WORKDIR /7daystodie

RUN steamcmd +force_install_dir /7daystodie +login anonymous +app_update 294420 +quit

EXPOSE 26900/tcp
EXPOSE 26900-26903/udp
EXPOSE 8081/TCP

ENTRYPOINT ["/bin/bash"]
CMD ["./startserver.sh", "-configfile=serverconfig.xml"]