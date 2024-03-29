# Reference
<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

**Classes**

* [`ferm`](#ferm): Ferm module init class
* [`ferm::config`](#fermconfig): Manage ferm configuration
* [`ferm::install`](#ferminstall): Manage ferm installation
* [`ferm::params`](#fermparams): Default parameters
* [`ferm::service`](#fermservice): Manage ferm service

**Functions**

* [`ferm::build_rule`](#fermbuild_rule): 

## Classes

### ferm

Ferm module init class

#### Parameters

The following parameters are available in the `ferm` class.

##### `rules`

Data type: `Hash`

rules to render in config file

Default value: {}

##### `rule_defaults`

Data type: `Hash`

defaults for rule, will be merged with each rule

Default value: $ferm::params::rule_defaults

##### `package_name`

Data type: `String`

name of the ferm package

Default value: $ferm::params::package_name

##### `package_version`

Data type: `String`

target version/state of the ferm package resource

Default value: $ferm::params::package_version

##### `service_name`

Data type: `String`

name of the ferm service

Default value: $ferm::params::service_name

##### `config_path`

Data type: `String`

path to ferm config file

Default value: $ferm::params::config_path

### ferm::config

Manage ferm configuration

### ferm::install

Manage ferm installation

### ferm::params

Default parameters

### ferm::service

Manage ferm service

## Functions

### ferm::build_rule

Type: Ruby 4.x API

The ferm::build_rule function.

#### `ferm::build_rule(Hash $rule, Hash $rule_defaults, Optional[String] $comment)`

The ferm::build_rule function.

Returns: `String`

##### `rule`

Data type: `Hash`



##### `rule_defaults`

Data type: `Hash`



##### `comment`

Data type: `Optional[String]`



