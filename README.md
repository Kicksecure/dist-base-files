# base files for distributions #

Creates user `user` with password `changeme` (not in Qubes).
That is if user `user` is not existing yet.
And if it does create user `user` it also locks the root account.
Therefore root account locking effectively only happens in new
builds not having user `user` already created.

Adds user `user` to groups `cdrom,audio,dip,sudo,plugdev`.

Anonymized operating system user name `user`, `/etc/hostname`, `/etc/hosts`,
`/etc/machine-id`, `/var/lib/dbus/machine-id`, which should be shared among
all anonymity distributions. See also:

* https://mailman.boum.org/pipermail/tails-dev/2013-January/002457.html
* https://labs.riseup.net/code/issues/5655
* http://lists.autistici.org/message/20140627.215105.24023267.en.html

Ships a systemd unit file dist-skel-first-boot.service
which runs `/usr/lib/helper-scripts/first-boot-skel` (part of helper-scripts)
package.

Simplifies sudo default lecture to only showing the default password once.

Creates version file `/var/lib/dist-base-files/build_version`.

This package gets installed by default in both, Kicksecure and Whonix.
## How to install `dist-base-files` using apt-get ##

1\. Download [Whonix's Signing Key]().

```
wget https://www.whonix.org/patrick.asc
```

Users can [check Whonix Signing Key](https://www.whonix.org/wiki/Whonix_Signing_Key) for better security.

2\. Add Whonix's signing key.

```
sudo apt-key --keyring /etc/apt/trusted.gpg.d/whonix.gpg add ~/patrick.asc
```

3\. Add Whonix's APT repository.

```
echo "deb https://deb.whonix.org buster main contrib non-free" | sudo tee /etc/apt/sources.list.d/whonix.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `dist-base-files`.

```
sudo apt-get install dist-base-files
```

## How to Build deb Package from Source Code ##

Can be build using standard Debian package build tools such as:

```
dpkg-buildpackage -b
```

See instructions. (Replace `generic-package` with the actual name of this package `dist-base-files`.)

* **A)** [easy](https://www.whonix.org/wiki/Dev/Build_Documentation/generic-package/easy), _OR_
* **B)** [including verifying software signatures](https://www.whonix.org/wiki/Dev/Build_Documentation/generic-package)

## Contact ##

* [Free Forum Support](https://forums.whonix.org)
* [Professional Support](https://www.whonix.org/wiki/Professional_Support)

## Donate ##

`dist-base-files` requires [donations](https://www.whonix.org/wiki/Donate) to stay alive!
