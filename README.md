# keter

#### Table of Contents

1. [Overview](#overview)
1. [Setup - The basics of getting started with keter](#setup)
    * [What keter affects](#what-keter-affects)
    * [Beginning with keter](#beginning-with-keter)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Overview

This is a Puppet module for installing keter, a deployment system for Yesod
web applications.  Check out the [documentation](https://github.com/snoyberg/keter)
for keter itself.

This module currently only supports Debian 7.  It may also work with Ubuntu.

## Setup

### What keter affects

* installs `/usr/sbin/keter`
* installs `/etc/keter.conf`
* keter itself creates `/var/www/keter`
  (this is editable in the `/etc/keter.conf` file)
* `.keter` applications can be placed in `/var/www/keter/incoming/`

### Beginning with keter

If you are running on Debian, you just need to include the module like below:

```
class {'::keter': }
```

## Usage

- `version` parameter. Used to set a different version.
  (Currently only version 1.3.6 is available.)
  ```
  class {'::keter':
	version => '1.3.6',
  }
  ```

## Limitations

Currently only available on Debian 7.  I would gladly accept pull requests
getting it working on different distributions.

## Development

Pull requests are welcome.  https://github.com/cdepillabout/puppet-keter/pulls

## Release Notes/Contributors/Etc **Optional**

*TODO*
