# @summary Manage ferm installation
class ferm::install {
  package { $ferm::package_name:
    ensure => $ferm::package_version,
  }
}
