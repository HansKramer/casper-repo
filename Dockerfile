FROM ubuntu-upstart:14.04
MAINTAINER Hans Kramer
CMD ["/sbin/init"]
EXPOSE 81:80
ADD ipkg-1.7-0.1.deb /tmp/ipkg-1.7-0.1.deb
RUN apt-get update 
RUN apt-get install -y apache2 binutils
RUN dpkg -i /tmp/ipkg-1.7-0.1.deb
#RUN mkdir -p /var/www/html/ipkgs/9G20/stable /var/www/html/ipkgs/9G20/unstable
