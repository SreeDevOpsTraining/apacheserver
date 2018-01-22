require 'spec_helper.rb'

describe 'apacheserver::config' do
   let(:chef_run) { ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe) }

 it "creates a file" do
   expect(chef_run).to create_file('/opt/apacheserver/index.html')
 end

end
