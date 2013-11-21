class foreman_debug_rsync::config {

  include 'rsync'

  $base = '/data/rsync'

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
    uid => -2,
    gid => -2,
  }

}
