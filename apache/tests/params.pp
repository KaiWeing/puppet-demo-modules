include apache::params
notify {"servicename = ${apache::params::servicename}, configfile = ${apache::params::configfile}":}
