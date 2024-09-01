{
  pkgs,
  inputs,
  ...
}: {
  imports = [
	#other nix stuff maybe idk
  ];

  home.sessionPath = ["$HOME/.local/bin"];

  # Add programs
  home.packages = with pkgs; [
	#apps
	firefox
	vesktop 
	
	#terminal
	kitty
	git
	micro
	btop
	fzf
	bat
	
	#hyprland/WM
	hyprland
	pywal
	waybar
	brightnessctl
	wlogout
	wofi
	tofi
	dolphin
	networkmanager
	networkmanagerapplet
	swww
	xwayland
	xdg-desktop-portal-gtk
	xdg-desktop-portal-hyprland
	#screenshotting
	grim
	slurp
	wl-clipboard
	
	#misc
	psmisc
	power-profiles-daemon
	pulseaudio
	
	#fonts
	nerdfonts
  ];
}
