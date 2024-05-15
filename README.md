# Neovim (AstroNvim) config

## 🛠️ Installation

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

#### Start Neovim

```shell
nvim
```
