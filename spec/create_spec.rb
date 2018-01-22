require 'spec_helper'

describe 'apacheserver::config' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'centos', version: '7.3.1611').converge(described_recipe) }

  it 'creates a file with the default action' do
    expect(chef_run).to create_file('/opt/apacheserver/index.html').with(
    content: '<html> hello server installed and running </html>'
   )
  end

  it 'checks firewall rule for port 80' do
    expect(chef_run).to create_firewall_rule('httpd').with(
      port: 80,
      command: :allow
    )
  end
end
