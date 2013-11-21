class foreman_debug_rsync::config {

  include 'rsync'
  include 'rsync::server'

  $base = '/var/www/html/foreman-debug-rsync'

  file { $base:
    ensure  => directory,
  }

  rsync::server::module{ 'debug-incoming':
    path    => $base,
    require => File[$base],
    comment => 'Write-only place for foreman-debug',
    read_only => 'no',
    write_only => 'yes',
    list => 'yes',
    uid => 99,
    gid => 99,
  }

}
