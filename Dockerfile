FROM anapsix/alpine-java:8

MAINTAINER k2wanko <k2.wanko@gmail.com>

ENV MINECRAFT_VERSION=1.8.9
ENV MINECRAFT_DOWNLOAD_URL=https://s3.amazonaws.com/Minecraft.Download/versions/${MINECRAFT_VERSION}/minecraft_server.${MINECRAFT_VERSION}.jar

EXPOSE 25565

RUN mkdir /data
WORKDIR /data

# Set eula
RUN echo "eula=true" > "./eula.txt"

# Downlaod server
ADD $MINECRAFT_DOWNLOAD_URL ./minecraft_server.jar

CMD ["java", "-jar", "minecraft_server.jar", "-server"]
