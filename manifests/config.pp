# @summary Manage ferm configuration
class ferm::config {
  $rules = $ferm::rules.map |$comment, $rule| {
    ferm::build_rule($rule, $ferm::rule_defaults, $comment)
  }
  file { $ferm::config_path:
    ensure  => 'present',
    content => epp('ferm/ferm.conf.epp', {
      rules         => $rules,
    }),
  }
}
