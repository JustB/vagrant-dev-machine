#!/bin/sh

apt-get update -qq

if [ ! -f /var/log/first_install_done ];
    then
    # Set default password for root user in MySQL
    echo mysql-server mysql-server/root_password password niubbo | debconf-set-selections
    echo mysql-server mysql-server/root_password_again password niubbo | debconf-set-selections

    # Install Vim
    apt-get install -y vim

    # Apache
    # ----
    # Install
    apt-get install -y apache2 

    echo "ServerName localhost" > /etc/apache2/httpd.conf
    # Enable mod_rewrite
    a2enmod rewrite
    # Enable overrides
    sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default
    # Restart Apache
    service apache2 restart

    # PHP
    # ---
    # Install
    apt-get install -y php5 php5-cli php5-mysql php5-curl php5-gd php5-fpm libapache2-mod-php5 

    # MySQL
    # -----
    # Install
    apt-get install -y mysql-server mysql-client

    # cURL
    # ----
    apt-get install -y curl

    # git
    # ---
    apt-get install git-core

    # composer
    # --------
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer

    touch /var/log/first_install_done
fi

if [ ! -h /var/www ];
    then

    # Remove /var/www
    rm -rf /var/www
    # Create symbolic link with the htdocs folder
    ln -fs /vagrant/htdocs /var/www
    
fi

