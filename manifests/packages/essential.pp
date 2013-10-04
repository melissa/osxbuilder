# This class makes sure all the packages that are essential and commonly used
# when building a package are present on the current system.

class osxbuilder::packages::essential (
 $git_version = "1.8.3.2"
){
  package { 'git':
    ensure => installed,
    source => "https://git-osx-installer.googlecode.com/files/git-${git_version}-intel-universal-snow-leopard.dmg",
  }
  file { '/usr/local/bin':
    ensure => directory,
    require => Package['git'],
  }
  file { '/usr/local/bin/git':
    ensure => link,
    target => '/usr/local/git/bin/git',
    require => File['/usr/local/bin'],
  }
}
