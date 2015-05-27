# -*- mode: ruby -*-
# vi: set ft=ruby :

# Run with: vagrant up --provider=docker

Vagrant.configure('2') do |config|
  config.vm.define :debian_latest do |box|
    box.vm.hostname = 'debian-vagrant-latest'

    box.vm.provider 'docker' do |d|
      d.image = 'tlatsas/debian-vagrant:latest'
      d.has_ssh = true
    end
  end

  config.vm.define :debian_wheezy do |box|
    box.vm.hostname = 'debian-vagrant-wheezy'

    box.vm.provider 'docker' do |d|
      d.image = 'tlatsas/debian-vagrant:7.7'
      d.has_ssh = true
    end
  end

  config.vm.define :debian_jessie do |box|
    box.vm.hostname = 'debian-vagrant-jessie'

    box.vm.provider 'docker' do |d|
      d.image = 'tlatsas/debian-vagrant:8'
      d.has_ssh = true
    end
  end
end
