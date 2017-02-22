# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

repos = (ENV['repos_dir'].nil?) ? "none" : ENV['repos_dir']


Vagrant.configure("2") do |config|
  config.vm.define "dev_env" do |dev_env|
    usage = "Usage: repos_dir='<dir>' vagrant up dev_env"
    abort(usage) if (repos == 'none' && ARGV[0] == "up")

    dev_env.vm.hostname = "dev-env-vm"
    dev_env.vm.synced_folder repos, "/repos" if (ARGV[0] == "up")
    dev_env.vm.synced_folder "~/.ssh", "/home/vagrant/ssh"

    dev_env.vm.box = "ubuntu/trusty64"
    dev_env.vm.box_version = "20170220.0.0"
    dev_env.vm.provision :shell, path: "bootstrap.sh"
    dev_env.vm.network :forwarded_port, guest: 80, host: 4567
    dev_env.vm.network :forwarded_port, guest: 5000, host: 4568
    end

end
