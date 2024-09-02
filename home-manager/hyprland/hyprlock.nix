{ config, ... }: {

  programs.hyprlock = {
    enable = true;
    settings = {
      source = ''$HOME/.cache/wal/colors-hyprland.conf'';
      general = {
        grace = 0;
        no_fade_in = false;
        disable_loading_bar = false;
      };

      # BACKGROUND
      background = {
        monitor = "";
        path = "~/.cache/current_wallpaper.jpg";
        blur_passes = 1;
        contrast = 0.8916;
        brightness = 0.3172;
        vibrancy = 0.1696;
        vibrancy_darkness = 0.0;
      };

      label = [
        # {
        #   # Day-Month-Date
        #   monitor = "";
        #   text = ''cmd[update:1000] echo -e "$(date +"%A, %B %d")"'';
        #   color = "rgba(255, 255, 255, 1)";
        #   font_size = 78;
        #   font_family = "steelfish outline thin";
        #   position = "0, 590";
        #   halign = "center";
        #   valign = "center";
        # }
        # # Time
        # {
        #   monitor = "";
        #   text = ''cmd[update:1000] echo "<span>$(date +"%I:%M")</span>"'';
        #   color = "rgba(216, 222, 233, .7)";
        #   font_size = 160;
        #   font_family = "steelfish outline regular";
        #   position = "0, 370";
        #   halign = "center";
        #   valign = "center";
        # }


        # USER
        {
          monitor = "";
          text = "Hi $USER :)";
          color = "rgba(255, 255, 255, 1)";
          outline_thickness = 2;
          dots_size = 0.2; # Scale of input-field height, 0.2 - 0.8
          dots_spacing = 0.2; # Scale of dots' absolute size, 0.0 - 1.0
          dots_center = true;
          font_size = 50;
          font_family = "steelfish outline thin";
          position = "0, 35";
          halign = "center";
          valign = "center";
        }
      ];

      # INPUT FIELD
      input-field = [{
        monitor = "";
        size = "300, 60";
        outline_thickness = 2;
        dots_size = 0.2; # Scale of input-field height, 0.2 - 0.8
        dots_spacing = 0.2; # Scale of dots' absolute size, 0.0 - 1.0
        dots_center = true;
        outer_color = "rgba(255, 255, 255, 0)";
        inner_color = "rgba(255, 255, 255, 0.1)";
        font_color = "rgb(200, 200, 200)";
        fade_on_empty = false;
        font_family = "SFProDisplay Nerd Font Bold";
        placeholder_text =
          ''<span foreground="##ffffff99">🔒 password</span>'';
        hide_input = false;
        position = "0, -50";
        halign = "center";
        valign = "center";
      }];
    };
  };
}
