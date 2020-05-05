FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -y install ca-certificates gnupg curl
RUN echo 'deb https://packages.microsoft.com/repos/ms-teams/ stable main' > /etc/apt/sources.list.d/teams.list
RUN curl 'https://packages.microsoft.com/keys/microsoft.asc' | apt-key adv --import
RUN apt-get update
RUN apt-get -y install teams

WORKDIR /usr/share/teams
CMD /usr/share/teams/teams
