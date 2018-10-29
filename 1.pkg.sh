# 2017 Jun 01 RAD Start with a fresh, fully updated system
sudo yum update -y

# 2017 Jun 01 RAD Add Extra Package repo, utils that should have been installed by default
sudo yum install epel-release
sudo yum install mailx wget -y

# 2017 Jun 01 RAD Install emacs & git for development, deployment
sudo yum install emacs git -y

# 2017 Jun 01 RAD Second tier of a LAMP stack is the Database Server
sudo yum install mariadb mariadb-server -y
sudo systemctl enable mariadb
sudo systemctl start mariadb

# 2017 Jun 01 RAD Next up is the Web Server
sudo yum install httpd php php-mysql php-gd -y
sudo systemctl enable httpd
sudo systemctl start httpd

# 2018 Oct 29 RSD Download latest copy of WordPress (for Linux, unzip)
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz

# 2017 Aug 30 RAD Get certbot for https
# Enable EPEL Optional Channels per https://certbot.eff.org/all-instructions/#centos-rhel-7-apache
sudo yum -y install yum-utils
sudo yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional
#sudo yum install certbot python-certbot-apache -y
sudo yum install certbot-apache -y


# 2017 Jun 07 RAD Finish up by making sure everything is up to date
sudo yum update -y
