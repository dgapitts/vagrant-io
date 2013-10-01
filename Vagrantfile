# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.define "iolang" do |iolang|
    iolang.vm.box = "precise64"
    iolang.vm.box_url = "http://files.vagrantup.com/precise64.box"
    iolang.vm.network :hostonly, "33.33.33.11"
    iolang.vm.host_name = "iolang"
    iolang.vm.provision :shell, :path => "provision.sh"
  end

end
