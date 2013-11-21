class foreman_debug_rsync::install {

  package{ 'rsync':
    ensure  => installed,
  }

}
