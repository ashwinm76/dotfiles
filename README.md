
Config files managed by rcm
===========================
Get rcm from https://github.com/thoughtbot/rcm and follow the instructions there to install it. Then clone this repository into
your home directory and run 'rcup -d dotfiles -x README.md'

Other machine customizations
============================
The following customizations can be done independent of rcm.

Setting the kernel fonts and colours
------------------------------------
Add the following to /etc/default/grub:

    GRUB_CMDLINE_LINUX_DEFAULT="vt.color=0x02"

Run 'dpkg-reconfigure console-setup' and chose:
  * UTF-8
  * Latin 1 & 5
  * TerminusBold
  * 8x16

Disable booting into the GUI login greeter
------------------------------------------
Run

    systemctl set-default multi-user

Set the grub theme to the fallout theme
---------------------------------------
Download the theme from https://github.com/shvchk/fallout-grub-theme and copy it into /boot/grub/themes.

Add the following to /etc/default/grub:

      GRUB_TERMINAL=console
      GRUB_GFXMODE=1024x768
      GRUB_GFXPAYLOAD_LINUX=keep
      GRUB_BACKGROUND=
      GRUB_THEME=/boot/grub/themes/fallout-grub-theme/theme.txt

