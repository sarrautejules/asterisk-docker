FROM debian

RUN apt-get update -y
RUN apt-get install build-essential libxml2-dev libncurses5-dev libsqlite3-dev libssl-dev uuid-dev libjansson-dev wget -y

WORKDIR /tmp/
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-15-current.tar.gz
RUN tar -xvf asterisk-15-current.tar.gz
WORKDIR /tmp/asterisk-15.5.0
RUN ./configure
