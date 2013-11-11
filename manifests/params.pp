# Class: gcc::params
#
# This class manages parameters for the gcc module
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class gcc::params{

  case $::osfamily {
    'RedHat': {
       $package = 'gcc'
    }
    'Debian': {
       $package = [ 'gcc', 'build-essential' ]
    }
    solaris: {
      case $::kernelrelease {
        '5.11': {
          $package = 'gcc'
        }
        default: {
          warning("Module 'gcc' is not currently supported on Solaris with ${::kernelrelease}")
        }
      }
    }
    default: {
      warning("Module 'gcc' is not currently supported on Solaris with ${::operatingsystem}")
    }
  }
}
