service node['ntp']['service'] do
  action [ :disable, :stop ]
end
