{pkgs, config, inputs, ...}:
{
	#imports here if i need ig
	imports = [
		#inputs.hyprland.homeManagerModules.default
		./keybinds.nix
		./environment.nix
		#import alllll of waybar
	];
	
	wayland.windowManager.hyprland = {
		enable = true;
		package = pkgs.hyprland;
		settings = {
			debug = {
				disable_logs = false;
			};
			#startup programs
			exec-once = [
				
				#swww
				#"kitty &"
				#"waybar &"	
				"~/.dots/home-manager/hyprland/hypr-scripts/start-waybar.sh"
			];

			#monitor
			monitor = [", preferred, auto, 1.333"];

			#windows and stuff
			general = {
				gaps_in = 3;
				gaps_out = 6;
				border_size = 3;
				"col.active_border" = "rgba(33ccffee)";
				"col.inactive_border" = "rgba(595959aa)";
				resize_on_border = false;
				layout = "dwindle";
			};
			decoration = {
				rounding = 10;
				blur = {
					enabled = true;
					size = 10;
					passes = 3;
					ignore_opacity = true;
					xray = true;
				};
				active_opacity = 0.9;
				inactive_opacity = 0.8;
				fullscreen_opacity = 1.0;

				dim_inactive = true;
				dim_strength = 0.1;

				drop_shadow = true;
				shadow_range = 5;
				shadow_render_power = 3;
				"col.shadow" = "rgba(1a1a1aee)";
			};
			
		};
	};
}
