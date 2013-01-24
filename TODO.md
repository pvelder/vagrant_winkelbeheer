* install mysql gem: 

    sudo apt-get install make
    sudo gem install mysql

* import mysql database

    mysql -u root -proot dvoro_development < /vagrant/tmp/dump.sql 