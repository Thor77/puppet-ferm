# @summary Manage ferm configuration
class ferm::config {
  file { $ferm::config_path:
    ensure  => 'present',
    content => epp('ferm/ferm.conf.epp', {
      rules         => $ferm::rules,
      rule_defaults => $ferm::rule_defaults,
    }),
  }
}
