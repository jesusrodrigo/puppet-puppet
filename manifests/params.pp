# Class: puppet::params
#
class puppet::params {
  case $::operatingsystem {
    'Fedora',
    'RedHat',
    'CentOS': {
      $sysconfig = true
      $rundir = '/var/run/puppet'
    }
    'Gentoo': {
      $sysconfig = false
      $rundir = '/run/puppet'
    }
    default: {
      $sysconfig = false
      $rundir = '/var/run/puppet'
    }
  }
}
