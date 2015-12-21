Vagrant.configure("2") do |config|
  config.vm.box = "opscode_ubuntu_14.04"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
  
  config.omnibus.chef_version = :latest
  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.chef.io/organizations/universe-ke"
    chef.validation_key_path = "~/chef/chef-repo/.chef/universe-ke-validator.pem"
    chef.validation_client_name = "universe-ke-validator"
    chef.node_name = "server"
  end
  config.vm.provider :virtualbox do |vb|
    vb.gui = false
  end
end
