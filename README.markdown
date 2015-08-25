## HAProxy-Apache-Puppet Demo
Configure HAProxy for a reverse-proxy load-balancing demo with Apache web server pool. For more information, please read my blog post: [Automate the Provisioning and Configuration of HAProxy and an Apache Web Server Cluster Using Foreman](http://wp.me/p1RD28-1ok).

#### Useful Commands
* curl haproxy.example.com/haproxy?stats
* curl haproxy.example.com # displays main page via load-balancer
* cat /etc/haproxy/haproxy.cfg # file managed by Puppet
* sudo /etc/init.d/haproxy restart
* sudo haproxy -f /etc/haproxy/haproxy.cfg -c # check config file
* ls -l /var/log | grep haproxy
* sudo cat /var/log/haproxy.log
* sudo cat /etc/rsyslog.conf
* sudo service rsyslog restart
