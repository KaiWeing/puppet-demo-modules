class apache::service {
  service { "httpd":
    name => $apache::params::servicename,
    #name => 'httpd',
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class['apache::install'],
  }
}
