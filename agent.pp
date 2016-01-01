
package {
  [
    'nginx',
    'pe-puppet-dashboard',
    'pe-puppetserver',
    'pe-puppet-license-cli',
    'pe-puppetdb',
    'pe-puppetdb-terminus',
    'pe-memcached',
    'pe-postgresql',
    'pe-activemq',
    'pe-console-services']:
      ensure => 'purged';
}
