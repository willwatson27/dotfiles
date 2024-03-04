# WSL Environment Setup

### Windows Terminal
Install new powershell from windows store, launch it from windows terminal and run

```ps
winget install JanDeDobbeleer.OhMyPosh -s winget
Install-Module -Name Terminal-Icons -Repository PSGallery
```

Install `CaskaydiaCoveNerdFontMono-Regular.ttf` \
Add these options to the profile for your instance in `settings.json` file for Windows Terminal.
```json
{
    "profiles": {
       "list": [
          {
            "name": "Ubuntu-LX",
            // Add these options
            "colorScheme": "One Half Dark",
            "opacity": 85,
            "font": { "face": "CaskaydiaCove Nerd Font" }
          }
        ]
    },
    "schemes": [
       {
          "name": "One Half Dark",
          // Add these options
          "background": "#0A0034",
       }
    ]
}
```

### Multiple WSL Instances

Export and unregister current instance
```
wsl --export Ubuntu C:\wsl-images\Ubuntu-TrackMMA.tar.gz
wsl --unregister Ubuntu
```

Install a distro and export a backup of it to create additional instances
```
wsl --install -d Ubuntu-22.04
wsl --export Ubuntu-22.04 C:\wsl-images\Ubuntu-22.04.tar.gz
```

Import the new distro and run it
```
wsl --import Ubuntu-LX C:\wsl-images\Ubuntu-22.04.tar.gz
wsl -d Ubuntu-LX
```

Import and run the old distro
```
wsl --import Ubuntu-TrackMMA C:\wsl-images\Ubuntu-TrackMMA C:\wsl-images\Ubuntu-TrackMMA.tar.gz
wsl -d Ubuntu-TrackMMA
```

### Set default user
`/etc/wsl.conf`
```
[user]
default=lx
```

### Configure Github
```bash
git config --global user.name "Will Watson"
git config --global user.email "willwatson27@gmail.com"
mkdir ~/.ssh ; cd ~/.ssh
ssh-keygen -o -t rsa -C "willwatson27@gmail.com"
ssh-add -K ~/.ssh/id_rsa
cat id_rsa.pub
```

### TMUX Plugins
Start a session with the `tmux` command \
Press `Ctrl-a` then `I` to install the plugins in `~/.tmux.conf`.

### Vim Plugins / Language Servers
install neovim packages with `:PackerSync` \
install language servers with `:Mason`

### Dual Key Remap
Create shortcut to `./dual-key-remap/dual-key-remap.exe` and put it in the windows startup folder

## ZK Notes
#### Clone the repo
`git clone git@github.com:willwatson27/notes.git ~/notes`
#### Download the latest relelease to the bin folder
`https://github.com/mickael-menu/zk/releases/latest`

