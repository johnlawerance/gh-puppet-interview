class gh-puppet-interview {

  package { 'httpd':
    ensure => installed,
  }

  service { 'httpd':
    ensure => "started",
  }
 
  file { '/etc/httpd/conf/httpd.conf':
    ensure => present,
    source => 'files/httpd.conf'
  }

}
