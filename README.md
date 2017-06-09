# itamae-docker-demo
itamae demo using Docker

# reference
* https://github.com/itamae-kitchen/itamae/wiki

# build
    docker build -t ssmythe/itamae:1.1 https://github.com/ssmythe/itamae-docker-demo.git

# run
    docker run -it -p 8888:80 ssmythe/itamae:1.1 /bin/bash

# demo

## Install nginx

    cat install.rb
    itamae local install.rb

## See nginx chkconfig and service status

    chkconfig --list
    service nginx status

## Browse localhost:8080 and see nginx default index.html

## Update index.html

    cat template.erb
    cat update_index_html.rb
    itamae local update_index_html.rb

## Browse localhost:8888 and see updated index.html

## See nginx installed packages

    yum list installed | grep nginx

## Remove nginx

    itamae local uninstall.rb

## See nginx service and chkconfig entry is gone

    service nginx status
    chkconfig --list

## Browse localhost:8888 and see nginx not running

## See all nginx packages have been removed

    yum list installed | grep nginx
