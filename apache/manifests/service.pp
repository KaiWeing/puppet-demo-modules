class apache::service {
  service { $apache::params::servicename:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class['apache::install'],
  }
}
