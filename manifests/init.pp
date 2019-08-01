# @summary Ferm module init class
# @param rules [Hash] rules to render in config file
# @param rule_defaults [Hash] defaults for rule, will be merged with each rule
# @param package_name [String] name of the ferm package
# @param package_version [String] target version/state of the ferm package resource
# @param service_name [String] name of the ferm service
# @param config_path [String] path to ferm config file
class ferm (
  Hash $rules = {},
  Hash $rule_defaults = $ferm::params::rule_defaults,
  String $package_name = $ferm::params::package_name,
  String $package_version = $ferm::params::package_version,
  String $service_name = $ferm::params::service_name,
  String $config_path = $ferm::params::config_path,
) inherits ferm::params {
  contain ferm::install
  contain ferm::config
  contain ferm::service
}
