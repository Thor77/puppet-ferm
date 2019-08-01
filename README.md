# puppet-ferm

Module to manage [ferm](http://ferm.foo-projects.org/)

## Usage

```puppet
class { 'ferm':
    rules => {
        '01 policy drop' => {
            policy => 'drop',
            action => '',
        },
       '02 allow ssh' => {
            proto => 'tcp',
            dport => '22',
       },
    }
}
```

## Limitations

* currently only Debian and Archlinux are supported
* no tests
