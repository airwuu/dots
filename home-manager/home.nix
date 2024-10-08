# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
    ./programs.nix
    ./hyprland/hyprland.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;

      #git
      programs.git = {
      	enable = true;
      	userName = "airwuu";
      	userEmail = "airsnixos@gmail.com";
      	extraConfig = {
      		init.defaultBranch = "main";	
      	};
      };
    };
  };

  # TODO: Set your username
  home = {
    username = "air";
    homeDirectory = "/home/air";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  # home.packages = with pkgs; [ steam ];

  #fuzzel
  # programs.fuzzel.enable = true;

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.zsh = {
  	enable = true;
  	shellAliases = {
  		cd = "z";
  		m = "micro";
  		nix-rebuild = "sudo nixos-rebuild switch --flake .#cloud";
  		home-rebuild = "home-manager switch --flake .#air@cloud";
  		both-rebuild = "nix-rebuild && home-rebuild";
  	};
  };
  programs.zoxide.enable = true;
  programs.zoxide.enableZshIntegration = true;
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
}
