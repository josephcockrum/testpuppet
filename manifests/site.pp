node default {
  file {
      '/root/README':
      ensure => file,
	  content => 'This is a readme.',
	  owner => 'root',
      }
}

node 'puppettestserver.lsst.local' {
	include role::master_server
}

node /client$/ {
	include role::app_server
}