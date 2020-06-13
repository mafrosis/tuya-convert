FROM phusion/baseimage:master

RUN apt-get update && apt-get install -y sudo iproute2 iputils-ping

RUN echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections

WORKDIR /tuya-convert

# Install dependencies
COPY install_prereq.sh .
RUN ./install_prereq.sh

# Copy all source files into the docker image
COPY . .

CMD ["/tuya-convert/docker/bin/config.sh"]
