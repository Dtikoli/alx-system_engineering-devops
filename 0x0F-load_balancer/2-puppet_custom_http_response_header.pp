# Installs Nginx and custom HTTP response headers

# Ensure that package information is up to date
exec { 'update-apt':
  command => '/usr/bin/apt-get update',
  path    => ['/usr/bin'],
  logoutput => true,
  refreshonly => true,
}

# Install the Nginx package
package { 'nginx':
  ensure => installed,
  require => Exec['update-apt'],
}

# Add custom HTTP response header to Nginx configuration
file_line { 'add-header':
  ensure => present,
  path   => '/etc/nginx/sites-enabled/default',
  line   => "\\\tadd_header X-Served-By ${HOSTNAME};",
  after  => 'server_name _;',
}

# Ensure that the Nginx service is running
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

