# -*- mode: ruby -*-
# vi: set ft=ruby :
BOX_IMAGE = "centos/7"
NODE_COUNT = 2

Vagrant.configure("2") do |config|
  config.vm.define "AlphaServer" do |subconfig|
    subconfig.vm.box = BOX_IMAGE
    subconfig.vm.hostname = "AlphaServer"
    subconfig.vm.network :private_network, ip: "10.0.0.10"
  end

  (1..NODE_COUNT).each do |i|
    config.vm.define "AlphaClient#{i}" do |subconfig|
      subconfig.vm.box = BOX_IMAGE
      subconfig.vm.hostname = "AlphaClient#{i}"
      subconfig.vm.network :private_network, ip: "10.0.0.#{i + 10}"
    end
  end
end
