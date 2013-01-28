node['ntp']['packages'].each do |ntppkg|
  package ntppkg
end

node['ntp']['varlibdir'].each do |ntpdir|
  directory ntpdir do
    owner node['ntp']['var_owner']
    group node['ntp']['var_group']
    mode 0755
  end
end

service node['ntp']['service'] do
  supports :status => true, :restart => true
  action [ :enable, :start ]
end

template "/etc/ntp.conf" do
  source "ntp.conf.erb"
  owner node['ntp']['conf_owner'] 
  group node['ntp']['conf_group']
  mode "0644"
  notifies :restart, resources(:service => node['ntp']['service'])
end
