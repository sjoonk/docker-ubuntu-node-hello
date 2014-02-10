Vagrant.configure("2") do |config|

  # http://blog.phusion.nl/2013/11/08/docker-friendly-vagrant-boxes/
  config.vm.box = "phusion-open-ubuntu-12.04-amd64"
  config.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/ubuntu-12.04.3-amd64-vbox.box"
  
  config.vm.network :forwarded_port, host: 4243, guest: 4243
  config.vm.network :forwarded_port, host: 8080, guest: 8080

  # config.vm.network "public_network"
  # config.vm.synced_folder "../data", "/vagrant_data"

  # http://docs.vagrantup.com/v2/provisioning/docker.html
  config.vm.provision "docker"

 # add a bit more memory, it never hurts. It's VM specific and we're using Virtualbox here.
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end
end
