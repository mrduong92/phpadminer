FROM php:7.1-fpm

MAINTAINER mrduong92, mrduong.92@gmail.com

RUN apt-get update && apt-get install -y \
	nginx \ 
	wget

#Download PHP Adminer Latest version
RUN mkdir -p /var/www/html/adminer \
	&& cd /var/www/html/ \
	&& wget http://www.adminer.org/latest.php -O /var/www/html/adminer/index.php \
	&& chown -R www-data:www-data /var/www/html/adminer
