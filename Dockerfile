FROM centos:6

MAINTAINER Steve Smythe

WORKDIR /tmp

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install wget

RUN wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz && tar -xzvf ruby-install-0.6.1.tar.gz && cd ruby-install-0.6.1/ && make install

RUN /usr/local/bin/ruby-install --system ruby
RUN echo 'export PATH=$PATH:/usr/local/bin' > /etc/profile.d/usr_local_bin.sh
RUN gem update --system

RUN gem install itamae

ADD *.rb *.erb /tmp/

RUN itamae local install.rb
RUN itamae local uninstall.rb

EXPOSE 80

CMD ["--port 80"]

