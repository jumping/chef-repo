
yum_key node['yum']['epel']['key'] do
  url  node['yum']['epel']['key_url']
  action :add
end

yum_repository "epel" do
  description "Extra Packages for Enterprise Linux"
  key node['yum']['epel']['key']
  mirrorlist node['yum']['epel']['url']
  includepkgs node['yum']['epel']['includepkgs']
  exclude node['yum']['epel']['exclude']
  action platform?('amazon') ? [:add, :update] : :create
end
