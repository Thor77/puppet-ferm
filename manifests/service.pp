# @summary Manage ferm service
class ferm::service {
  service { $ferm::service_name:
    ensure    => 'running',
    enable    => true,
    subscribe => File[$ferm::config_path],
  }
}
