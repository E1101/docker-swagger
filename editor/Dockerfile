# --------------------------------------------------------------------
# | Usage Rec:
# |  
# |
# |

FROM payam/nodejs

MAINTAINER Payam Naderi <naderi.payam@gmail.com>

RUN apt-get update && apt-get install -y --force-yes \
      wget \
      unzip \
    && wget https://github.com/swagger-api/swagger-editor/archive/master.zip \
       && unzip -o ./master.zip -d / \
    && apt-get autoclean && rm -rf ./master.zip && rm -rf /var/lib/apt/lists/*
 
RUN cd /swagger-editor-master/ && npm install --verbose && npm install -g http-server

EXPOSE 80

ADD run.sh /run.sh
RUN chmod 755 /*.sh
WORKDIR /swagger-editor-master
CMD ["/bin/sh", "-c", "/run.sh"]
