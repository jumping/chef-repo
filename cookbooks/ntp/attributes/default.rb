default['ntp']['servers']   = %w{ 0.centos.pool.ntp.org 1.centos.pool.ntp.org 2.centos.pool.ntp.org }
default['ntp']['packages'] = %w{ ntp ntpdate }
default['ntp']['service'] = "ntp"
default['ntp']['varlibdir'] = "/var/lib/ntp"
default['ntp']['driftfile'] = "#{node['ntp']['varlibdir']}/ntp.drift"
