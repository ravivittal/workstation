package %w(tree ntp telnet) do
  action :install
end

package 'git' do
  action :install
end

template '/etc/motd' do
  source 'motd.erb'
  action :create
end

service 'ntpd' do
  action [ :enable, :start ]
end
