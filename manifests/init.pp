# Class: osxbuilder
#
# Actions:
#   - Ensures the osx has everything needed for building packages
#
# Sample Usage:
#   class { 'osxbuilder': }
#

class osxbuilder (
  $pe = false,
  $xcodesource = http://adcdownload.apple.com/Developer_Tools/command_line_tools_os_x_mountain_lion_for_xcode__april_2013/xcode462_cltools_10_86938259a.dmg,
  $appleid = nill,
  $applepasswd = nill,
) {
  include osxbuilder::packages::essential

  if ($pe) {
    class { $osxbuilder::packages::extra:
      appleid => $appleid,
      applepasswd => $applepasswd,
      sources => $xcodesource,
  }
}
