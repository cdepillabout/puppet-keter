#
class keter::install inherits keter {

  case $::osfamily {
    'Debian': {

      $deb_name = "keter_${version}_${architecture}.deb"

      file { '/opt/keter-debs':
        ensure => directory,
      }

      file { "/opt/keter-debs/${deb_name}":
        owner  => 'root',
        group  => 'root',
        mode   => '644',
        ensure => present,
        source => "puppet:///modules/${module_name}/${deb_name}",
      }

      package { 'keter':
        ensure   => $package_ensure,
        provider => dpkg,
        source   => "/opt/keter-debs/${deb_name}",
      }
    }
    'RedHat': {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
    'Archlinux': {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }

}

