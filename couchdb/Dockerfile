FROM wtanaka/trusty32
MAINTAINER http://wtanaka.com/dockerfiles
#RUN apt-get update \
#   && sudo apt-get install software-properties-common -y \
#   && add-apt-repository universe -y \
#   && add-apt-repository ppa:couchdb/stable -y \
#   && apt-get update \
#   && apt-get install couchdb -y \
#   && apt-get remove software-properties-common -y \
#   && apt-get clean autoclean -y \
#   && apt-get autoremove -y \
#   && rm -rf /var/lib/apt /var/lib/dpkg /var/lib/cache /var/lib/log
RUN apt-get update
RUN sudo apt-get install software-properties-common -y
RUN add-apt-repository universe -y
RUN add-apt-repository ppa:couchdb/stable -y
RUN apt-get update
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl
RUN apt-get install couchdb -y
RUN apt-get remove software-properties-common -y
RUN apt-get clean autoclean -y
RUN apt-get autoremove -y
RUN rm -rf /var/lib/apt /var/lib/dpkg /var/lib/cache /var/lib/log
