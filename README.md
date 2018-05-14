# Kinvolk Training Vagrant Box

## Before the training

### Install Vagrant

https://www.vagrantup.com/docs/installation/

### Clone this repository

Example:

```
$ git clone https://github.com/kinvolk/kinvolk-training-vagrant-box
```

### Run machine for the first time

```
$ cd kinvolk-training-vagrant-box/
```

Start the VM:

```
$ vagrant up
    [...]
    default: Processing triggers for libc-bin (2.27-0ubuntu3) ...
    default: Processing triggers for systemd (237-3ubuntu7) ...
    default: Setup finished successfully!
```

Verify the VM is running and the shared directory mounted:

```
$ vagrant ssh -- bash -c 'mount | grep vboxsf'
vagrant on /vagrant type vboxsf (rw,nodev,relatime)
```

Stop the VM:

```
$ vagrant halt
```

That's it!
