package %w(tree ntp telnet) do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  content 'This Server is Ravi Vittal`s Property'
  mode '0700'
  owner 'root'
  group 'wheel'
end

service 'ntpd' do
  action [ :enable, :start ]
end
