FROM ubuntu:18.04

RUN apt-get update && apt-get install -y libglu1 libsm6 bc wget

RUN mkdir houdiniInstaller
COPY houdini* /houdiniInstaller/
RUN tar -xf /houdiniInstaller/houdini* -C /houdiniInstaller && ./houdiniInstaller/houdini*/houdini.install --auto-install --accept-EULA 2020-05-05 && rm -r /houdiniInstaller

RUN	mkdir /sesinet
WORKDIR /sesinet

COPY launch .

COPY App.py .

CMD "./launch"
