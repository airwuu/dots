{ config, pkgs, ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
    	colors = {
    		background ="#201f24fa";
    	};
    };
  };
}
