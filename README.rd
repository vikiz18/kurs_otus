2 - Upgarde kernel on Ubuntu 2204 from 5.4.0-200-generic to 5.4.285-0504285-generic

root@nginx:/home/vagrant# uname -r
5.4.0-200-generic

root@nginx:/home/vagrant# dpkg -i linux-headers* linux-image* linux-modules*
Selecting previously unselected package linux-headers-5.4.285-0504285-generic.
(Reading database ... 94955 files and directories currently installed.)
Preparing to unpack linux-headers-5.4.285-0504285-generic_5.4.285-0504285.202411081835_amd64.deb ...
Unpacking linux-headers-5.4.285-0504285-generic (5.4.285-0504285.202411081835) ...
Selecting previously unselected package linux-headers-5.4.285-0504285.
Preparing to unpack linux-headers-5.4.285-0504285_5.4.285-0504285.202411081835_all.deb ...
Unpacking linux-headers-5.4.285-0504285 (5.4.285-0504285.202411081835) ...
Selecting previously unselected package linux-image-unsigned-5.4.285-0504285-generic.
Preparing to unpack linux-image-unsigned-5.4.285-0504285-generic_5.4.285-0504285.202411081835_amd64.deb ...
Unpacking linux-image-unsigned-5.4.285-0504285-generic (5.4.285-0504285.202411081835) ...
Selecting previously unselected package linux-modules-5.4.285-0504285-generic.
Preparing to unpack linux-modules-5.4.285-0504285-generic_5.4.285-0504285.202411081835_amd64.deb ...
Unpacking linux-modules-5.4.285-0504285-generic (5.4.285-0504285.202411081835) ...
Setting up linux-headers-5.4.285-0504285 (5.4.285-0504285.202411081835) ...
Setting up linux-modules-5.4.285-0504285-generic (5.4.285-0504285.202411081835) ...
Setting up linux-headers-5.4.285-0504285-generic (5.4.285-0504285.202411081835) ...
Setting up linux-image-unsigned-5.4.285-0504285-generic (5.4.285-0504285.202411081835) ...
I: /boot/vmlinuz.old is now a symlink to vmlinuz-5.4.0-200-generic
I: /boot/initrd.img.old is now a symlink to initrd.img-5.4.0-200-generic
I: /boot/vmlinuz is now a symlink to vmlinuz-5.4.285-0504285-generic
I: /boot/initrd.img is now a symlink to initrd.img-5.4.285-0504285-generic
Processing triggers for linux-image-unsigned-5.4.285-0504285-generic (5.4.285-0504285.202411081835) ...
/etc/kernel/postinst.d/initramfs-tools:
update-initramfs: Generating /boot/initrd.img-5.4.285-0504285-generic
/etc/kernel/postinst.d/zz-update-grub:
Sourcing file `/etc/default/grub'
Sourcing file `/etc/default/grub.d/50-cloudimg-settings.cfg'
Sourcing file `/etc/default/grub.d/init-select.cfg'
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-5.4.285-0504285-generic
Found initrd image: /boot/initrd.img-5.4.285-0504285-generic
Found linux image: /boot/vmlinuz-5.4.0-200-generic
Found initrd image: /boot/initrd.img-5.4.0-200-generic
Found linux image: /boot/vmlinuz-5.4.0-148-generic
Found initrd image: /boot/initrd.img-5.4.0-148-generic
done

root@nginx:/home/vagrant# update-grub
Sourcing file `/etc/default/grub'
Sourcing file `/etc/default/grub.d/50-cloudimg-settings.cfg'
Sourcing file `/etc/default/grub.d/init-select.cfg'
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-5.4.285-0504285-generic
Found initrd image: /boot/initrd.img-5.4.285-0504285-generic
Found linux image: /boot/vmlinuz-5.4.0-200-generic
Found initrd image: /boot/initrd.img-5.4.0-200-generic
Found linux image: /boot/vmlinuz-5.4.0-148-generic
Found initrd image: /boot/initrd.img-5.4.0-148-generic
done

root@nginx:/home/vagrant#reboot

vagrant@nginx:~$ uname -r
5.4.285-0504285-generic

