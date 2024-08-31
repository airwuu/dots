#yuhhh keybinds
{
	wayland.windowManager.hyprland.settings= {
		#vars
		"$mainMod" = "SUPER";
		"$terminal" = "kitty";
		"$browser" = "firefox";

		#vars for the nums, its a variable cuz of dumb stuff earlier
		"$1" = "1";
	    "$2" = "2";
	    "$3" = "3";
	    "$4" = "4";
	    "$5" = "5";
	    "$6" = "6";
	    "$7" = "7";
	    "$8" = "8";
	    "$9" = "9";
	    "$0" = "0";
		
		#add scripts
		#too lazy for now

		bind = [
			#fun stuff to edit at the top

			#comment these out later cuz they're only here for ricing
			"$mainMod, M, exec, hyprctl dispatch exit"
			"$mainMod, N, exec, ~/.dots/home-manager/hyprland/hypr-scripts/start-waybar.sh"
				
			#main
			"$mainMod, Q, killactive"
			"$mainMod, V, fullscreen"
			"$mainMod, B, togglefloating"
			"$mainMod, J, layoutmsg, togglesplit"
			#main apps
			"$mainMod, T, exec, $terminal"
			"$mainMod, F, exec, $browser"			
			#workspaces
			"$mainMod, $1, workspace, 1"
			"$mainMod, $2, workspace, 2"
			"$mainMod, $3, workspace, 3"
			"$mainMod, $4, workspace, 4"
			"$mainMod, $5, workspace, 5"
			"$mainMod, $6, workspace, 6"
			"$mainMod, $7, workspace, 7"
			"$mainMod, $8, workspace, 8"
			"$mainMod, $9, workspace, 9"
			"$mainMod, $0, workspace, 10"
			"$mainMod, mouse_down, workspace, e+1"
			"$mainMod, mouse_up, workspace, e-1"
			"$mainMod SHIFT, $1, movetoworkspace, 1"
			"$mainMod SHIFT, $2, movetoworkspace, 2"
			"$mainMod SHIFT, $3, movetoworkspace, 3"
			"$mainMod SHIFT, $4, movetoworkspace, 4"
			"$mainMod SHIFT, $5, movetoworkspace, 5"
			"$mainMod SHIFT, $6, movetoworkspace, 6"
			"$mainMod SHIFT, $7, movetoworkspace, 7"
			"$mainMod SHIFT, $8, movetoworkspace, 8"
			"$mainMod SHIFT, $9, movetoworkspace, 9"
			"$mainMod SHIFT, $0, movetoworkspace, 10"
			"$mainMod CTRL, left, movewindow, l"
			"$mainMod CTRL, right, movewindow, r"
			"$mainMod CTRL, up, movewindow, u"
			"$mainMod CTRL, down, movewindow, d"
		];
		#mouse
		bindm = [
			"$mainMod, mouse:272, movewindow" #left click
			"$mainMod, mouse:273, resizewindow" #right click
		];
		input = {
			touchpad = {
				natural_scroll = true;	
			};
		};
	};
}