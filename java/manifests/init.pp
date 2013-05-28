class java {
  $java_package = $osfamily ? {
    Debian => "openjdk-6-jdk",
    default => "java-1.6.0-openjdk",
  }
  package { "java":
    name => $java_package,
    ensure => installed,
  }
}
