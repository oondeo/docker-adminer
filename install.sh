#!/bin/sh

  mkdir -p /var/www/html/plugins && cd /var/www/html/plugins && \
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
  curl -sL http://www.adminer.org/latest.php -o /var/www/html/adminer.php && \
  curl -sL https://raw.githubusercontent.com/oondeo/docker-adminer/master/index.php -o /var/www/html/index.php && \
  curl -sL https://raw.github.com/vrana/adminer/master/designs/nette/adminer.css -o /var/www/html/adminer.css
