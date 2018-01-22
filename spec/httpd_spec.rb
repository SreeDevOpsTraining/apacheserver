require 'spec_helper'

describe package('httpd') do
  it { should be_installed }
end

describe file('/etc/chrony.conf') do
  it { should contain 'driftfile /var/lib/chrony/drift' }
end
