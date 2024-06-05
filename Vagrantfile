Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    
    # Redirigir el puerto 80 de la VM al puerto 8080 del host
    config.vm.network "forwarded_port", guest: 80, host: 8080
    
    # Mapear la carpeta del proyecto de la máquina Host al directorio "/vagrant" en Ubuntu
    config.vm.synced_folder ".", "/vagrant"
    
    # Script de aprovisionamiento
    config.vm.provision "shell", path: "provision.sh"
  end
  