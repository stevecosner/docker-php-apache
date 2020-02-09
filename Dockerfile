FROM php:apache

RUN apt-get update
#RUN apt-get upgrade -y
RUN apt install git -y
RUN git clone https://github.com/BlackrockDigital/startbootstrap-scrolling-nav.git
RUN cp -r startbootstrap-scrolling-nav/. /var/www/html

#ADD index.html /var/www/html
ADD info.php /var/www/html

