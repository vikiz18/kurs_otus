Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
    ENV['VAGRANT_SERVER_URL'] = 'https://vagrant.elab.pro'

  config.vm.provider "virtualbox" do |vb|
    vb.name = "nginx"
    vb.memory = "1024"
    vb.cpus = 1

  config.vm.hostname = "nginx"
  config.vm.define "nginx"
  config.vm.network "public_network", ip: "192.168.190.24"
  config.vm.boot_timeout = 600      
#  config.vm.synced_folder "~/Downloads", "/host_downloads"    
config.vm.synced_folder ".", "/vagrant" 
 config.vm.provision "shell", inline: <<-SHELL
#        mkdir -p ~root/.ssh
#        cp ~vagrant/.ssh/auth* ~root/.ssh
#        sudo sed -i 's/\#PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
#            mkdir -p ~root/.ssh
#            cp ~vagrant/.ssh/auth* ~root/.ssh
	useradd -m -s /bin/bash -U vz
        systemctl restart sshd
      SHELL
  end
end

