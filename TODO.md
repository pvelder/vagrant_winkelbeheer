* install mysql gem: 

    sudo apt-get install make
    sudo gem install mysql

* import mysql database

    mysql -u root -proot dvoro_development < /vagrant/tmp/dump.sql 
    
* subdomain handling: edit /etc/hosts on guest and host (both?)

    vagrant@lucid64:~/wrk/dvoro$ cat /etc/hosts
    127.0.0.1	localhost slaapwel.localhost atexis.localhost
    
    connect to http://slaapwel.localhost:4000 
    
    