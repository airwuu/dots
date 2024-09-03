<div align="center">
  <h1> 🌨️ my nixos system and dotfiles 🌨️</h1>
<img src="https://img.shields.io/github/last-commit/airwuu/dots?style=for-the-badge&logo=github&logoColor=458588&color=458588">
<img src="https://img.shields.io/github/repo-size/airwuu/dots?style=for-the-badge&logo=githublogoColor=458588&color=458588">
<img src="https://img.shields.io/badge/NixOS-24.05-blue.svg?style=for-the-badge&logo=NixOS&logoColor=458588&color=458588">
</div>

![image](https://github.com/user-attachments/assets/74483ac9-ab63-4122-b806-8e57ae005062)

<div align="left">
  <h2>📖 Info</h2>
  <p>i am mostly writing this doc for myself, but feel free to reference if you find it helpful :)</p>
</div>
<details>
  <summary>
    <b>DE components</b>
  </summary>

|         component                    | name                                      |
| --------------------------- | :---------------------------------------:
| **Window Manager**          | hyprland |
| **Bar**                     | waybar |
| **Application Launcher**    | none |
| **Notification Daemon**     | none |
| **Terminal Emulator**       | kitty |
| **Shell**                   | zsh, starship |
| **Text Editor**             | micro, zed |
| **network management tool** | networkmanager |
| **System resource monitor** | btop |
| **File Manager**            | dolphin |
| **Color Scheme**            | pywal :) |
| **Cursor**                  | none/hyprland default |
| **Icons**                   | nerdfonts icons |
| **Lockscreen**              | hyprlock |
| **Image Viewer**            | none |
| **Media Player**            | none |
| **Music Player**            | none |
| **Screenshot Software**     | grim/slurp |
| **Screen Recording**        | none |
| **Clipboard**               | wl-clipboard |
| **Color Picker**            | none |
</details>

<details>
  <summary>
    <b>aliases</b>
  </summary>

  `nix-rebuild` -> `sudo nixos-rebuild switch --flake .#cloud`
  
  `home-rebuild` -> `home-manager switch --flake .#air@cloud`
  
  `both-rebuild` -> ``
  
  `m` -> `micro`

  `cd` -> `z`
</details>

## 🔎 Acknowledgments

i used Misterio77's starter minimal nix flake as a launching point: [Misterio77's starter config](https://github.com/Misterio77/nix-starter-configs)

several dotfiles i referenced:
- [Exatio's dotfiles](https://github.com/Exatio/hyprflake)
- [Frost-Phoenix's dotfiles](https://github.com/Frost-Phoenix/nixos-config)


