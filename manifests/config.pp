#
class keter::config inherits keter {

  # TODO: Install a keter.conf file to /etc/.

  # file { $config:
  #   ensure  => file,
  #   owner   => 0,
  #   group   => 0,
  #   mode    => '0644',
  #   content => template($config_template),
  # }

}

