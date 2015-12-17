
class profiles::puppet_server () {

  class { '::puppet': 
    server => true,
    server_foreman => false, #Turn off foreman integration
    server_reports => 'store',
    server_environments => [], #Do this to override for r10k
  } 


  class { '::r10k':
    remote  => 'git@github.com:gknight007/test-puppet-control.git',
  }

}
