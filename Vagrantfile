# -*- mode: ruby -*-
# vi: set ft=ruby :

# Run with: vagrant up --provider=docker

Vagrant.configure('2') do |config|

  vm_name = 'docker-example'
  config.vm.define vm_name.to_sym do |box|
    box.vm.hostname = vm_name

    box.vm.provider 'docker' do |d|
      d.image = 'tlatsas/debian-vagrant:latest'
      d.has_ssh = true
    end
  end
end
