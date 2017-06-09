# itamae-docker-demo
itamae demo using Docker

# build
    docker build -t ssmythe/itamae:1.1 https://github.com/ssmythe/itamae-docker-demo.git

# run
    docker run -it -p 8888:80 ssmythe/itamae:1.1 /bin/bash

# demo

1. Install nginx

    cat install.rb
    itamae local install.rb

2. Browse localhost:8080 and see nginx default index.html

3. Update index.html

    cat template.erb
    cat update_index_html.rb
    itamae local update_index_html.rb

4. Browse localhost:8080 and see updated index.html

5. See nginx installed packages

    yum list installed | grep nginx

6. Remove nginx

    itamae local uninstall.rb

7. See all nginx packages have been removed

    yum list installed | grep nginx
