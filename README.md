#GCC build utils

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with gcc](#setup)
    * [What gcc affects](#what-gcc-affects)
    * [Setup requirements](#setup-requirements)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

The gccbuildutils module installs gcc and other for gcc required build utils.
The gccbuildutils is a forked of https://github.com/puppetlabs/puppetlabs-gcc but with additional build tools

##Module Description

The gccbuildutils module manages the installation gcc.

##Setup

###What GCC affects

* gcc package.


##Usage

```puppet
class { 'gccbuildutils':
}
```

##Reference

###Parameters

####gccbuildutils::ensure

Ensure if present or absent.

####gccbuildutils::autoupgrade

Upgrade package automatically, if there is a newer version.


##Limitations

This module has been tested on:

* RedHat Enterprise Linux 5/6
* Debian 6/7
* CentOS 5/6
* Ubuntu 12.04
* Solaris 11

Testing on other platforms has been light and cannot be guaranteed.

### Authors
This module is a forke of https://github.com/puppetlabs/puppetlabs-gcc.
The following contributor have contributed patches to this module (beyond Puppet Labs):

* apenney
* bodepd
* hunner
* mrobbert
* lstuker
