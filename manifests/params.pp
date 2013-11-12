# Class: gccbuildutils::params
#
# This class manages parameters for the gccbuildutils module
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class gccbuildutils::params{

  case $::osfamily {
    'RedHat': {
       $packages = ['gcc','automake','autoconf','libtool','gdb','binutils']
    }
    'Debian': {
       $packages = [ 'gcc', 'build-essential' ]
    }
    solaris: {
      case $::kernelrelease {
        '5.11': {
          $packages = ['gcc','automake','autoconfig','libtool','gdb','binutils', 'headers']
        }
        default: {
          warning("Module 'gccbuildutils' is not currently supported on Solaris with ${::kernelrelease}")
        }
      }
    }
    default: {
      warning("Module 'gccbuildutils' is not currently supported on Solaris with ${::operatingsystem}")
    }
  }
}
