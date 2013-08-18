# install everything needed to build PE packages
class osxbuilder::packages::extra (
  $appleid,
  $applepasswd,
  $sources,
){
  package { 'xcode':
    ensure => present,
    source => $sources,
  }
}
