class apache::install {
  package { $apache::params::packagename:
    ensure => present,
  }
}

