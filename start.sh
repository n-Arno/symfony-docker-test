#!/bin/bash

# PHP-FPM in background
/usr/sbin/php-fpm8.3  --fpm-config /etc/php/8.3/fpm/php-fpm.conf

# Apache2 in foreground
/usr/sbin/apache2ctl -D FOREGROUND
