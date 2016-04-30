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
      nginx \
      unzip \
    && wget https://github.com/wordnik/swagger-ui/archive/master.zip \
       && unzip -o ./master.zip -d /swagger && rm -rf ./master.zip \
    && cd /swagger && mv ./swagger-ui-master/dist/* .

ADD swagger /etc/nginx/sites-enabled/
RUN rm -f /etc/nginx/sites-enabled/default \
    && echo 'daemon off;' >> /etc/nginx/nginx.conf

EXPOSE 80

ADD run.sh /run.sh
RUN chmod 755 /*.sh

CMD ["/bin/sh", "-c", "/run.sh"]

