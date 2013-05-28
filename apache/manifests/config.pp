class apache::config {

  file { 'httpd.conf':
    path => "/etc/$apache::params::servicename/$apache::params::configfile",
    ensure => file,
    owner => 'root',
    group => 'root',
    mode => 644,
    source => "puppet:///modules/apache/$apache::params::configfile",
    require => Class['apache::install'],
    notify => Class['apache::service'],
  }
}

