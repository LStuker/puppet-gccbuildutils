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
       $packages = ['gcc', 'build-essential']
    }
    'Suse': {
      $packages = ['gcc', 'automake', 'autoconf', 'libtool', 'gdb', 'binutils']
    }
    solaris: {
      case $::kernelrelease {
        '5.11': {
          $packages = ['gcc-3','pkg://solaris/developer/build/automake','pkg://solaris/developer/build/autoconf','libtool','gdb','pkg:/developer/gnu-binutils', 'pkg://solaris/system/header']
        }
        '5.10': {
          $packages = ['CSWgcc4g++','CSWautomake','CSWautoconf','CSWlibtool','CSWgdb','CSWbinutils']
          $package_provide = 'pkgutil'
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
