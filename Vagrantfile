Vagrant.configure("2") do |config|
  config.vm.box = "docker-0.7.2"
  config.vm.box_url = "http://static.orchardup.com/binaries/vagrant/vagrant-docker-0.7.2-virtualbox.box"
  # we'll forward the port 8080 from the VM to the port 8080 on the host (OS X)
  # config.vm.network :forwarded_port, host: 8080, guest: 8080

  (49000..49900).each do |port|
    config.vm.network :forwarded_port, :host => port, :guest => port
  end

  # config.vm.network "public_network"

  # config.vm.synced_folder("vagrant-docker", "/vagrant")

 # add a bit more memory, it never hurts. It's VM specific and we're using Virtualbox here.
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end
end
