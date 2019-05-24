# base files for Anonymity Distributions #

Anonymized operating system user name "user", /etc/hostname, /etc/hosts,
/var/lib/dbus/machine-id, which should be shared among all anonymity
distributions. See also:
* https://mailman.boum.org/pipermail/tails-dev/2013-January/002457.html
* https://labs.riseup.net/code/issues/5655
* http://lists.autistici.org/message/20140627.215105.24023267.en.html

Adds user "user" to the group "debian-tor", so user "user" can access Tor's
control port.
## How to install `anon-base-files` using apt-get ##

1\. Add [Whonix's Signing Key](https://www.whonix.org/wiki/Whonix_Signing_Key).

```
sudo apt-key --keyring /etc/apt/trusted.gpg.d/whonix.gpg adv --keyserver hkp://ipv4.pool.sks-keyservers.net:80 --recv-keys 916B8D99C38EAF5E8ADC7A2A8D66066A2EEACCDA
```

3\. Add Whonix's APT repository.

```
echo "deb http://deb.whonix.org buster main contrib non-free" | sudo tee /etc/apt/sources.list.d/whonix.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `anon-base-files`.

```
sudo apt-get install anon-base-files
```

## How to Build deb Package ##

Replace `apparmor-profile-torbrowser` with the actual name of this package with `anon-base-files` and see [instructions](https://www.whonix.org/wiki/Dev/Build_Documentation/apparmor-profile-torbrowser).

## Contact ##

* [Free Forum Support](https://forums.whonix.org)
* [Professional Support](https://www.whonix.org/wiki/Professional_Support)

## Donate ##

`anon-base-files` requires [donations](https://www.whonix.org/wiki/Donate) to stay alive!
