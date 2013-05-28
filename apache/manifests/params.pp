class apache::params {
  case $osfamily {
    'RedHat': {
      $packagename = 'httpd'
      $servicename = 'httpd'
      $configfile  = 'httpd.conf'
    }
    'Debian': {
      $packagename = 'httpd'
      $servicename = 'apache2'
      $configfile  = 'apache2.conf'
    }
    default: {
      fail("no config for $osfamily")
    }
  }
}
