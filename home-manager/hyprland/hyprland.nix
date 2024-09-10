{pkgs, config, inputs, ...}:
{
	#imports here if i need ig
	imports = [
		# inputs.hyprland.homeManagerModules.default
		./keybinds.nix
		./environment.nix
		./hyprlock.nix
		./fuzzel.nix
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
				"hyprlock"		
				"swww init"
				"~/.dots/home-manager/hyprland/hypr-scripts/start-waybar.sh"
			];

			#monitor
			monitor = [", preferred, auto, 1.333"];

			#pywal stuff
			source = [
	     		"~/.cache/wal/colors-hyprland"
		    ];

			#windows and stuff
			general = {
				gaps_in = 3;
				gaps_out = 6;
				border_size = 3;
				"col.active_border" = "$color11 rgba(59595900) $color14 45deg"; 
				"col.inactive_border" = "rgba(59595950)";
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
			misc = {
				disable_splash_rendering = true;
				disable_hyprland_logo = true;
				allow_session_lock_restore = true;
			};
		};
	};

	
	#tofi configs
	home.file = {
	      ".config/tofi/config".text = ''
	        width = 100%
	        height = 100%
	        border-width = 0
	        outline-width = 0
	        padding-left = 35%
	        padding-top = 35%
	        result-spacing = 25
	        num-results = 7
	        font = spacemono
	        background-color = #000A
	      '';
	
	      ".config/tofi/config-search".text = ''
	        width = 100%
	        height = 100%
	        border-width = 0
	        outline-width = 0
	        padding-left = 5%
	        padding-top = 35%
	        result-spacing = 25
	        num-results = 7
	        font = monospace
	        background-color = #000A
	        prompt-text = "Search: "
	      '';
	 };
}
