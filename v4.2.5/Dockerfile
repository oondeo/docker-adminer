FROM oondeo/php:7

ENV ADMINER_VERSION=v4.2.5

RUN mkdir -p /var/www/html/plugins && \
  https://github.com/vrana/adminer/raw/v4.2.5/plugins/database-hide.php
  curl -sL http://www.adminer.org/latest.php -o /var/www/html/adminer.php
RUN curl -sL https://raw.github.com/vrana/adminer/master/designs/nette/adminer.css -o /var/www/html/adminer.css

ADD index.php /var/www/html
