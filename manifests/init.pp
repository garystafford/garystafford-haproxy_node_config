# Class: haproxy_node_config
#
# This module manages haproxy_node_config
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class haproxy_node_config () inherits haproxy {
  haproxy::listen { 'puppet00':
    collect_exported => false,
    ipaddress        => '*',
    ports            => '80',
    mode             => 'http',
    options          => {
      'option'  => ['httplog'],
      'balance' => 'roundrobin',
    }
    ,
  }

  Haproxy::Balancermember <<| listening_service == 'puppet00' |>>

  haproxy::balancermember { 'haproxy':
    listening_service => 'puppet00',
    server_names      => ['node01.example.com', 'node02.example.com'],
    ipaddresses       => ['192.168.35.121', '192.168.35.122'],
    ports             => '80',
    options           => 'check',
  }
}
