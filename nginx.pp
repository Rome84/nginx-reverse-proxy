node "localhost" {
include nginx
nginx::resource::server { 'localhost':
  listen_port => 80,
  proxy       => 'http://localhost:5601',
 } 
}
