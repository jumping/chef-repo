
file "/etc/localtime" do
  content node[:timezone]
end

execute "update timezone" do
  command "mv /etc/localtime /etc/localtime.bak && ln -s /usr/share/zoneinfo/UTC /etc/localtime"
end
