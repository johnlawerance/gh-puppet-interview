package { 'httpd':
  ensure => installed,
}

service { 'httpd':
  ensure  => "started",
  require => Package['httpd'],
}

file { '/etc/httpd/conf/httpd.conf':
  ensure  => present,
  source  => '/home/vagrant/gh-puppet-interview/files/httpd.conf'
  notify  => Service['httpd'],
  require => Package['httpd'],
}
