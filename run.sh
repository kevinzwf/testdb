#!/bin/bash

echo "this is a test web" > /var/www/html/index.html
/usr/sbin/httpd -DFOREGROUND
