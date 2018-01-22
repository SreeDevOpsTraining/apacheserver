group node['apacheserver']['group']

user node['apacheserver']['user'] do
group node['apacheserver']['group']

system true

shell '/bin/bash'
end


