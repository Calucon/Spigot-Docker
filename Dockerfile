ARG JDK
ARG JRE
ARG REV

FROM openjdk:$JDK AS build

ARG REV
ARG JRE
# newer distros use microdnf, older ones apt
RUN microdnf install git || apt install -y git || apt-get install -y git || yum install -y git || git --version

RUN mkdir /buildtools
WORKDIR /buildtools
RUN curl "https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar" --output BuildTools.jar
RUN java -Xmx4G -jar BuildTools.jar --rev $REV

FROM openjdk:$JRE

ENV XMX="1024M"
ENV XMS="128M"

ARG REV
RUN mkdir /spigot
RUN mkdir /app
RUN mkdir /app/worlds

WORKDIR /app

COPY --from=build /buildtools/spigot-$REV.jar /spigot/spigot.jar
COPY ./eula.txt /app/eula.txt

EXPOSE 25565
CMD ["java", "-server", "-XX:+UseG1GC", "-Xms${XMS}", "-Xmx${XMX}", "-Dcom.mojang.eula.agree=true", "-jar", "/spigot/spigot.jar", "--world-dir=/app/worlds"]
