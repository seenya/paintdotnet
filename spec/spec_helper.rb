require 'chefspec'
require 'chefspec/berkshelf'
require 'fauxhai'

current_dir = File.dirname(__FILE__)

# Use User's knife config if it exists
config = "#{current_dir}/../../../.chef/knife.rb" 

# Use a generic config if it doesn't
config = "#{current_dir}/chef/chef_config.rb" \
 unless File.exists?(config)

Chef::Config.from_file(config)


