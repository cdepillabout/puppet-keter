# == Class: keter
#
# Install keter, the deployment system for Yesod web applications.
#
# === Parameters
#
# [*version*]
#   Version of keter that will be installed.  This is quite limited.
#   You can look at the debs to see what versions are available.
#   https://github.com/cdepillabout/puppet-keter/tree/master/files
#
# [*package_ensure*]
#   Argument to `ensure` setting that will be passed to the package
#   resource.  Defaults to 'latest'.
#
# [*service_enable*]
#   Argument to `enable` setting that will be passed to the service
#   resource.  Defaults to 'true'.
#
# [*service_ensure*]
#   Argument to `ensure` setting that will be passed to the service
#   resource.  Defaults to 'running'.
#
# === Variables
#
# === Examples
#
#  class { 'keter':
#    version => '1.3.6',
#  }
#
# === Authors
#
# Dennis Gosnell <cdep.illabout@gmail.com>
#
# === Copyright
#
# Copyright 2015 Dennis Gosnell, unless otherwise noted.
#
class keter (
  $version        = $keter::params::version,
  $package_ensure = $keter::params::package_ensure,
  $service_enable = $keter::params::service_enable,
  $service_ensure = $keter::params::service_ensure,
) inherits keter::params {

  validate_string($package_ensure)
  validate_bool($service_enable)
  validate_string($service_ensure)
  validate_string($version)

  anchor { 'keter::begin': } ->
  class { '::keter::install': } ->
  class { '::keter::config': } ~>
  class { '::keter::service': } ->
  anchor { 'keter::end': }
}
