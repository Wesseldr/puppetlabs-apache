class apache::mod::mime {
  apache::mod { 'mime': }
  # Template uses no variables
  file { 'mime.conf':
    ensure  => file,
    path    => "${apache::mod_dir}/mime.conf",
    content => template('apache/mod/mime.conf.erb'),
  }
}
