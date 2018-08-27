## DarkCroc GTK
##### A modern flat dark theme based on [Numix](https://github.com/numixproject/numix-gtk-theme) by [The Numix Project](https://numixproject.org/).

## Build It

First, you need to compile the theme using the [Sass](http://sass-lang.com/) compiler.

To install Sass, install Ruby and the gem command using your distribution's package manager. Then install `sass` with the `gem` command,

`gem install sass` (not needed for Ubuntu/Debian)

You'll also need the ```glib-compile-schemas``` and  ```gdk-pixbuf-pixdata``` commands in your path to generate the gresource binary. Install them using your distribution's package manager.

|Distro|Commands|
|:----:|:----:|
|![arch][arch] &nbsp;![antergos][antergos]|`sudo pacman -S glib2 gdk-pixbuf2`|
|![opensuse][opensuse]|`sudo zypper install glib2-devel gdk-pixbuf-devel`|
|![fedora][fedora]|`sudo dnf install glib2-devel gdk-pixbuf2-devel`|
|![debian][debian] &nbsp;![ubuntu][ubuntu]|`sudo apt-get install ruby-sass libglib2.0-dev libgdk-pixbuf2.0-dev libxml2-utils`|

After installing all the dependencies, change to the cloned directory and, run the following in Terminal,

```sh
sudo make install
```

## Apply it

### GTK 3

In ~/.config/gtk-3.0/settings.ini, put

```sh
gtk-theme-name=DarkCroc
```

### GTK 2

Run

```sh
export GTK2_RC_FILES=/usr/share/themes/DarkCroc/gtk-2.0/gtkrc
```

before launching gtk-2.0 applications, e.g. by adding it to your .xinitrc.

### Firefox

By default, Firefox uses the system GTK 3 theme also for input boxes within websites.
This can look bad with some websites, sometimes even leading to unreadable text.
To work around it, you can go to `about:config` and set `widget.content.gtk-theme-override` (add it as a string pref if it doesn't exist yet) to a light theme of your choice, e.g. `Adwaita:light` ([source](https://www.reddit.com/r/firefox/comments/6rbvvw/photon_rectangular_tabs_have_landed_in_nightly/dl4318f/)).
After restarting firefox, you should be fine again.

#### For developers
If you want to hack on the theme, make sure you have the `inotifywait` command available, which is used for watching and automatically building the files.

To start watching for changes, run the following,

```sh
make watch
```

If you change any assets, you'll need to regenerate the `gtk.gresource.xml` and `gtk.gresource` files. You can use [grrr](https://github.com/satya164/grrr) to do it easily.

### Requirements

GTK+ 3.18 or above

Murrine theme engine

### Code and license

Report bugs or contribute at [GitHub](https://github.com/SpiritCroc/DarkCroc-gtk-theme)

License: GPL-3.0+


[antergos]: https://antergos.com/distro-logos/logo-square26x26.png "antergos"
[arch]: https://antergos.com/distro-logos/archlogo26x26.png "arch"
[fedora]: https://antergos.com/distro-logos/fedora-logo.png "fedora"
[openSUSE]: https://antergos.com/distro-logos/Geeko-button-bling7.png "openSUSE"
[ubuntu]: https://antergos.com/distro-logos/ubuntu_orange_hex.png "ubuntu"
[debian]: https://antergos.com/distro-logos/openlogo-nd-25.png "debian"

