# haproxy_node_config #

Configure HAProxy for reverse-proxy load-balancing demo.

####Useful Commands
* cat /etc/haproxy/haproxy.cfg # file managed by Puppet
* sudo /etc/init.d/haproxy restart
* sudo haproxy -f /etc/haproxy/haproxy.cfg -c # check config file
* curl haproxy.example.com # displays main page via load-balancer
* ls -l /var/log | grep haproxy
* sudo cat /var/log/haproxy.log

* sudo cat /etc/rsyslog.conf
* sudo service rsyslog restart
