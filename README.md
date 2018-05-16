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

## Troubleshooting

### HTTP proxy

If you are behind a HTTP proxy, you might need to set the
http_proxy and https_proxy environment variables (e.g. `set
https_proxy=https://your_proxy:your_port`) before executing the CLI
commands (git clone etc).

### vagrant up error

In case `vagrant up` returns an error for the first run due to a
confirmation dialog from VirtualBox, you can try again with `vagrant
destroy -f` followed by `vagrant up`. If that does not finish successfully
either, I will try to help with the setup during the workshop.
