FROM oondeo/php:7

RUN mkdir -p /var/www/html/plugins && cd /var/www/html/plugins \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/plugin.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/dump-xml.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/tinymce.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/file-upload.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/slugify.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/translation.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/foreign-system.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/dump-bz2.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/dump-zip.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/edit-foreign.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/edit-calendar.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/enum-option.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/login-servers.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/tables-filter.php && \
  curl -sLO https://raw.github.com/vrana/adminer/master/plugins/version-noverify.php && \
  curl -sL http://www.adminer.org/latest.php -o /var/www/html/adminer.php
RUN curl -sL https://raw.github.com/vrana/adminer/master/designs/nette/adminer.css -o /var/www/html/adminer.css
RUN sed -i "s/^upload_max_filesize.*/upload_max_filesize = 1000M/g" /usr/local/etc/php/php.ini \
 && sed -i  "s/^post_max_size.*/post_max_size = 1000M/g"       /usr/local/etc/php/php.ini  \
 && sed -i "s/^memory_limit.*/memory_limit = -1/g"           /usr/local/etc/php/php.ini  \
 && sed -i "s/^max_execution_time.*/max_execution_time = 0/g"      /usr/local/etc/php/php.ini
ADD index.php /var/www/html
