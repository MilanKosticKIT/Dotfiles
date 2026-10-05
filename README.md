# dotfiles

```bash
git clone <this-repo> ~/Projects/dotfiles && ~/Projects/dotfiles/install.sh
```

Then log out of the RDP session (don't just close the window) and reconnect.

## Contents

- `.Xclients`: makes xrdp start GNOME instead of XFCE. The VM image hardcodes
  `exec startxfce4` in `/etc/X11/xinit/Xclients`. `~/.Xclients` takes precedence
  over that file.
