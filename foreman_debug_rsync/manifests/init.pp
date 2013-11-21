class foreman_debug_rsync (
  $base = '/home/foreman-debug-rsync',
) {

  class { 'foreman_debug_rsync::install': } ->
  class { 'foreman_debug_rsync::config': } ->
  class { 'foreman_debug_rsync::cron': }

}
