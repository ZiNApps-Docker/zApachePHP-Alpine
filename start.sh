#!/bin/sh

httpd
tail -F /var/log/apache2/*log
