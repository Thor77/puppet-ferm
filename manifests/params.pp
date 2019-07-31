# @summary Default parameters
class ferm::params {
  $package_name = 'ferm'
  $package_version = 'installed'
  $service_name = 'ferm'
  $rule_defaults = {
    domain => ['ip', 'ip6'],
    table  => 'filter',
    chain  => 'INPUT',
    action => 'ACCEPT',
  }

  case $::osfamily {
    'Debian': {
      $config_path = '/etc/ferm/ferm.conf'
    }
    'Archlinux': {
      $config_path = '/etc/ferm.conf'
    }
    default: {
      notice('This module is not supported on this platform.')
    }
  }
}
