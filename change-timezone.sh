# Remove current settings
rm /etc/localtime

# Confire timezone -> ln -s /usr/share/zoneinfo/zone /etc/localtime
ln -s /usr/share/zoneinfo/America/Buenos_Aires /etc/localtime

# How to synchronize server with official Internet time (NTP)
# First of all, install ntpdate

# CentOS 
yum install ntpdate

# Ubuntu or Debian
apt install ntpdate

# Synchronize time
ntpdate 0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org 0.south-america.pool.ntp.org
