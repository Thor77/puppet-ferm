# @summary Ferm module init class
class ferm (
  Hash $rules = {},
  Hash $rule_defaults = {},
  String $package_name = $ferm::params::package_name,
  String $package_version = $ferm::params::package_version,
  String $service_name = $ferm::params::service_name,
  String $config_path = $ferm::params::config_path,
) inherits ferm::params {
  contain ferm::install
  contain ferm::config
  contain ferm::service
}
