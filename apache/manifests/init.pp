class apache {
  require apache::params
  include apache::install, apache::config, apache::service
}

