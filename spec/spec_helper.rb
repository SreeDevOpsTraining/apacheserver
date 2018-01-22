#spec_helper.rb
require 'chefspec'
require 'chefspec/berkshelf'
require 'serverspec'

at_exit { ChefSpec::Coverage.report! }
