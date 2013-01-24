Vagrant/Chef approach to get a virtualbox server with all software
needed to run an "old" rails 2 project.

Prerequisites:

* install vagrant + virtualbox
* librarian-chef gem to install external cookbook dependencies, see https://github.com/applicationsonline/librarian

Installation:

* clone this project
* execute these commands in a terminal:

    cd vagrant_winkelbeheer
    librarian-chef install 
    vagrant up
    
    vagrant ssh 
    cd wrk/dvoro
    script/server
    
* open browser on 4000: http://localhost:4000 
    
    
_
