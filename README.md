#GCC

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

The GCC module installs gcc.

##Module Description

The GCC module manages the installation gcc.

##Setup

###What GCC affects

* gcc package.


##Usage

```puppet
class { 'gcc':
}
```

##Reference

###Parameters

####gcc::ensure

Ensure if present or absent.

####gcc::autoupgrade

Upgrade package automatically, if there is a newer version.


##Limitations

This module has been tested on:

* RedHat Enterprise Linux 5/6
* Debian 6/7
* CentOS 5/6
* Ubuntu 12.04
* Solaris 11

Testing on other platforms has been light and cannot be guaranteed.

#Development

Puppet Labs modules on the Puppet Forge are open projects, and community
contributions are essential for keeping them great. We can’t access the
huge number of platforms and myriad of hardware, software, and deployment
configurations that Puppet is intended to serve.

We want to keep it as easy as possible to contribute changes so that our
modules work in your environment. There are a few guidelines that we need
contributors to follow so that we can have a chance of keeping on top of things.

You can read the complete module contribution guide [on the Puppet Labs wiki.](http://projects.puppetlabs.com/projects/module-site/wiki/Module_contributing)

### Authors

The following contributor have contributed patches to this module (beyond Puppet Labs):

* apenney
* bodepd
* hunner
* mrobbert
* lstuker
