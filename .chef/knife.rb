# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "gideonmaina"
client_key               "#{current_dir}/gideonmaina.pem"
validation_client_name   "universe-ke-validator"
validation_key           "#{current_dir}/universe-ke-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/universe-ke"
cookbook_path            ["#{current_dir}/../cookbooks"]
