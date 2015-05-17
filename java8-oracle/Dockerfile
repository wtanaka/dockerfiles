FROM wtanaka/trusty32
MAINTAINER http://wtanaka.com/dockerfiles
RUN apt-get update \
   && sudo apt-get install software-properties-common -y \
   && add-apt-repository ppa:webupd8team/java -y \
   && apt-get update \
   && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 \
      select true \
      | sudo /usr/bin/debconf-set-selections \
   && apt-get install oracle-java8-installer -y \
   && apt-get remove software-properties-common -y \
   && apt-get clean autoclean -y \
   && apt-get autoremove -y \
   && rm -rf /var/lib/apt /var/lib/dpkg /var/lib/cache /var/lib/log
