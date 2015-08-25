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
#   include 'haproxy_node_config'
#   class { 'haproxy_node_config': }
#
class haproxy_node_config {
  include haproxy

  haproxy::listen { 'apache-cluster':
    collect_exported => false,
    ipaddress        => '*',
    ports            => '80',
    mode             => 'tcp',
    options          => {
      'balance' => 'roundrobin',
    }
    ,
  }

  Haproxy::Balancermember <<| listening_service == 'puppet00' |>>

  haproxy::balancermember { 'haproxy':
    listening_service => 'apache-cluster',
    server_names      => ['node01.example.com', 'node02.example.com'],
    ipaddresses       => ['192.168.35.121', '192.168.35.122'],
    ports             => '80',
    options           => 'check',
  }
}
