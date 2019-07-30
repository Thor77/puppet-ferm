# @summary Default parameters
class ferm::params {
  $package_name = 'ferm'
  $package_version = 'installed'
  $service_name = 'ferm'
  $config_path = '/etc/ferm.conf'
  $rule_defaults = {
    domain => ['ip', 'ip6'],
    table  => 'filter',
    chain  => 'INPUT',
    action => 'ACCEPT',
  }
}
