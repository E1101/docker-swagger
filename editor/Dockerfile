# --------------------------------------------------------------------
# | Usage Rec:
# |  
# |   docker run --name web-app --publish 8080:80 --volume $(pwd):/var/www/html --detach payam/apache-php7
# |
# | Config Files: /etc/apache2/ 
# |   we can mount conf files to this place with volumes 
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
