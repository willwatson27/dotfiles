# WSL Environment Setup


<details>
    <summary><b>Setting up multiple WSL instances</b></summary>

Export a backup and unregister the current WSL instance
```powershell
wsl --export Ubuntu C:\wsl-images\Ubuntu-Main.tar.gz
wsl --unregister Ubuntu
```

Install a distro and export a backup of it to create additional instances
```powershell
wsl --install -d Ubuntu-22.04
wsl --export Ubuntu-22.04 C:\wsl-images\Ubuntu-22.04.tar.gz
```

Import the new distro and run it
```powershell
wsl --import Ubuntu-LX C:\wsl-images\Ubuntu-LX C:\wsl-images\Ubuntu-22.04.tar.gz
wsl -d Ubuntu-LX
```

Import and run the old distro
```powershell
wsl --import Ubuntu-Main C:\wsl-images\Ubuntu-Main C:\wsl-images\Ubuntu-Main.tar.gz
wsl -d Ubuntu-Main
```
</details>


### Configure Windows Terminal
Install the new Powershell from the windows store and run it as an administrator
```ps
winget install JanDeDobbeleer.OhMyPosh -s winget
Install-Module -Name Terminal-Icons -Repository PSGallery
```
Edit the `settings.json` in Windows Terminal with these options for the schemes and profiles being used.
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

### Setup dotfiles
In the WSL instance, login with `login <username>` if you aren't already \
Clone the repo and run the install script
```bash
cd ~ && git clone https://github.com/willwatson27/dotfiles.git
cd dotfiles
./install
```

### TMUX Plugins
Start a session with the `tmux` command \
Press `Ctrl-a` then `I` to install the plugins in `~/.tmux.conf`.

### Vim Plugins / Language Servers
Open neovim with the `v` shortcut and run `:PackerSync` \
Install language servers with `:Mason`

### Dual Key Remap
Create shortcut to `./dual-key-remap/dual-key-remap.exe` and put it in the windows startup folder

## ZK Notes
Clone the repo \
`git clone git@github.com:willwatson27/notes.git ~/notes` \
Download the latest relelease to the bin folder \
`https://github.com/mickael-menu/zk/releases/latest`

