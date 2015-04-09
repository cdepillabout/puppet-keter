#
class keter::service inherits keter {

  if ! ($service_ensure in [ 'running', 'stopped' ]) {
    fail('keter service_ensure parameter must be running or stopped')
  }

  service { 'keter':
    ensure     => $service_ensure,
    enable     => $service_enable,
    hasstatus  => false,
    hasrestart => true,
  }

}

