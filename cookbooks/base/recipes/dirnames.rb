node[:dirnames].each do |dir|
    directory "/mnt/#{dir}" do
        owner "root"
        group "root"
        mode 00755
        action :create
        recursive true
    end
end
