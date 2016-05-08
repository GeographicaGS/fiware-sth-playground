##
# geographica/accumulator-server
#
# This creates an Ubuntu derived base image for accumulator-server.
#

# Ubuntu 14.04 Trusty Tahyr
FROM ubuntu:trusty

MAINTAINER Cayetano Benavent <cayetano.benavent@geographica.gs>

# Install basic dependencies
RUN apt-get update -y && apt-get install -y \
    python-flask

# add accumulator server
ADD ./accumulator-server.py /usr/local/
RUN chmod a+x /usr/local/accumulator-server.py

EXPOSE 1028

WORKDIR /usr/local

CMD ./accumulator-server.py
