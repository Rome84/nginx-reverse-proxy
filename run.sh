#!/bin/bash
yum install -y wget
wget https://yum.puppet.com/puppet6-release-el-7.noarch.rpm
yum install -y puppet6-release-el-7.noarch.rpm
yum install -y puppet
puppet module install puppet-nginx
sed -i 's/localhost/`hostname`/g' nginx.pp
puppet apply nginx.pp
