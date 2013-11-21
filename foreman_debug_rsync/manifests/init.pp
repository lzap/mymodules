class foreman_debug_rsync {

  class { 'foreman_debug_rsync::install': } ->
  class { 'foreman_debug_rsync::config': } ->
  class { 'foreman_debug_rsync::cron': }

}
