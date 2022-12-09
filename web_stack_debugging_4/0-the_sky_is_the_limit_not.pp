#puppet manifests to fix high volume of HTTP requests
exec { 'nginx server':
  command => "/bin/echo ULIMIT='-n 4096' | sudo tee /etc/default/nginx && sudo service nginx restart"
}
