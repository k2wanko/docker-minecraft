FROM java:7
MAINTAINER k2wanko <k2.wanko@gmail.com>

COPY ./scripts /scripts
ENV PATH /scripts:$PATH

RUN mkdir /data
WORKDIR /data

EXPOSE 25565
EXPOSE 25575

ENTRYPOINT ["java"]
CMD ["-jar", "minecraft_server.jar", "-server"]
