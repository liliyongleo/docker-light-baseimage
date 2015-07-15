#!/bin/bash -e

echo "/!\ make sure runit is installed "

# install cron
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends cron
mkdir /etc/service/cron
chmod 600 /etc/crontab

## Remove useless cron entries.
# Checks for lost+found and scans for mtab.
rm -f /etc/cron.daily/standard
rm -f /etc/cron.daily/upstart
rm -f /etc/cron.daily/dpkg
rm -f /etc/cron.daily/password
rm -f /etc/cron.weekly/fstrim
