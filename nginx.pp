node "localhost" {
include nginx
nginx::resource::server { 'localhost':
  listen_port => 80,
  proxy       => 'http://google.com:80',
 } 
}
