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
	
	#hyprland/WM
	pywal
	waybar
	brightnessctl
	wofi
	dolphin
	networkmanager
	networkmanagerapplet
	swww
	xwayland
	xdg-desktop-portal-gtk
	xdg-desktop-portal-hyprland

	#misc
	psmisc
	power-profiles-daemon
	pulseaudio
	
	#fonts
	nerdfonts
  ];
}
