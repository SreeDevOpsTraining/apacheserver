httpd_service 'startapache' do
action [:create, :start]
end

httpd_config 'apacheconfig' do
 instance 'default'
 source 'httpd.conf.erb'
  notifies :restart, 'httpd_service[startapache]'
 action :create
end

#crating a cusotm director
directory "#{node['apacheserver']['directory_path']}" do
owner 'dheeraj'
group 'dheeraj-group'
mode '0755'
end

# creating a default web page fr apache servfile 

file "#{node['apacheserver']['directory_path']}/index.html" do
content '<html> hello server installed and running </html>'
owner 'dheeraj'
group 'dheeraj-group'
action :create
end

firewall_rule 'httpd' do
port 80
protocol :tcp
command :allow
end
