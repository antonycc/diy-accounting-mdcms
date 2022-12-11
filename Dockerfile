# Purpose: DIY Accounting content files in nginx accessed from: http://localhost:80/index.html
# Usage:
#    $ docker build --tag diy-accounting-mdcms .
#    $ docker image ls diy-accounting-mdcms
#    $ docker run --interactive --tty diy-accounting-mdcms bash
FROM nginx

MAINTAINER DIY Accounting https://diyaccounting.co.uk/

RUN mkdir -p /usr/share/webapp/zips
COPY ./index.html /usr/share/webapp
ADD ./build /usr/share/webapp/content

RUN mkdir -p /etc/nginx/
COPY nginx.conf /etc/nginx/nginx.conf
