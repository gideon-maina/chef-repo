Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-12.04"
  config.vm.box_url = "file://precise32.box"
  config.omnibus.chef_version = :latest
  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.opscode.com/organizations/universe-ke"
    chef.validation_key_path = "~/.chef/universe-ke-validator.pem"
    chef.validation_client_name = "universe-ke-validator"
    chef.node_name = "server"
  end
end
