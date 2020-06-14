FROM php:apache

RUN apt-get update
#RUN apt-get upgrade -y
RUN apt install git -y
ADD info.php /var/www/html

RUN git clone https://github.com/BlackrockDigital/startbootstrap-landing-page.git
RUN cp -r startbootstrap-landing-page/. /var/www/html
