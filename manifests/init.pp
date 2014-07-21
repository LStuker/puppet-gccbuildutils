# Class: gccbuildutils
#
# This class installs gcc and other build utils for gcc
#
# Parameters:
#
#   [*ensure*]
#     Ensure if present or absent.
#     Default: present
#
#   [*autoupgrade*]
#     Upgrade package automatically, if there is a newer version.
#     Default: false
#
#   [*packages*]
#     Name of the package.
#     Only set this, if your platform is not supported or you know,
#     what you're doing.
#     Default: auto-set, platform specific
#
# Actions:
#   - Install the gcc package
#
# Requires:
#
# Sample Usage:
#
class gccbuildutils (
  $ensure              = 'present',
  $autoupgrade         = false,
  $packages            = $gccbuildutils::params::packages,
  $package_provider    = $gccbuildutils::params::package_provider,
) inherits gccbuildutils::params {

  case $ensure {
    /(present)/: {
      if $autoupgrade == true {
        $package_ensure = 'latest'
      } else {
        $package_ensure = 'present'
      }
    }
    /(absent)/: {
      $package_ensure = 'absent'
    }
    default: {
      fail('ensure parameter must be present or absent')
    }
  }

  package { $packages:
    ensure   => $package_ensure,
    provider => $package_provider,
  }
}
