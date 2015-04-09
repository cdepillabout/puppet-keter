#
class keter::install inherits keter {

  case $::osfamily {
    'Debian': {
      package { 'keter':
        ensure   => $package_ensure,
        provider => dpkg,
        source   =>
          "puppet:///modules/${module_name}/keter_${version}_${architecture}.deb",
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

