class apache::install {
  package { "httpd":
    name => $apache::params::packagename,
    ensure => present,
  }
}

