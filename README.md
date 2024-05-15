# Neovim (AstroNvim) config

## 🛠️ Neovim Installation
Linux
NOTE:
> [!WARNING]
> This may not work (particularly the echo command to add to path). Untested for now.
```shell
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo echo 'export PATH=$PATH:/opt/nvim-linux64/bin' | tee -a ~/.bashrc
source ~/.bashrc
```
Windows
```powershell
https://github.com/neovim/neovim/releases/latest/download/nvim-win64.msi
```

## 🛠️ Config Installation

#### Make a backup of your current nvim and shared folder

Linux/MacOS
```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

Windows (PowerShell)
```pwsh
Rename-Item -Path $env:LOCALAPPDATA\nvim -NewName $env:LOCALAPPDATA\nvim.bak
Rename-Item -Path $env:LOCALAPPDATA\nvim-data -NewName $env:LOCALAPPDATA\nvim-data.bak
```

#### Clone the repository

Linux/MacOS
```shell
git clone https://github.com/ibanks42/nvim-config ~/.config/nvim
```

Windows (PowerShell)
```pwsh
git clone https://github.com/ibanks42/nvim-config $env:LOCALAPPDATA\nvim
```

#### Install fonts (optional)
Linux/MacOS: Go to
```shell
~/.config/nvim/fonts
```
and install fonts from there

Windows
```shell
%localappdata%\nvim\fonts
```
and install fonts from there

#### Start Neovim

```shell
nvim
```
