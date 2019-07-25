#!/bin/bash
yum install -y wget git
wget https://yum.puppet.com/puppet6-release-el-7.noarch.rpm
yum install -y puppet6-release-el-7.noarch.rpm
yum install -y puppet
git clone https://github.com/Rome84/nginx-reverse-proxy.git
cd nginx-reverse-proxy
puppet module install puppet-nginx
sed -i 's/localhost/`hostname`/g' nginx.pp
puppet apply nginx.pp
