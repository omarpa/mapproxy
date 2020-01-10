FROM ubuntu:19.10

RUN apt-get update -y
RUN apt-get install -y\ 
    python3.7\
    python-pil\
    python-yaml\
    libproj-dev\
    libgeos-dev\ 
    python-lxml\
    libgdal-dev\
    python3-pip\
    vim htop && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/partial/* /tmp/* /var/tmp/*
    
#COPY get-pip.py /tmp/.
#RUN python3.7 /tmp/get-pip.py
#RUN pip3 install Shapely Pillow PyYAML
RUN pip3 install MapProxy==1.12.0

#RUN mapproxy-util create -t base-config mymapproxy
#RUN mapproxy-util create -t wsgi-app mapproxy.yaml

#WORKDIR /mymapproxy
#RUN mapproxy-util serve-develop -b 0.0.0.0 mapproxy.yaml

EXPOSE 8080
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD tail -f /dev/null