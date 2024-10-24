#stolen from exatio hyprflake
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    catppuccin-gtk
  ];

  wayland.windowManager.hyprland.settings = {


    env = [
      # Enable logs
      "HYPRLAND_LOG_WLR, 1"

      # Theme
      # "XCURSOR_THEME, Bibata-Modern-Classic"

      ##attempt to fix cursor
      # "QT_SCALE_FACTOR=2.6"
      # "ELM_SCALE=2.6"
      # "GDK_SCALE=2.6"
      # "XCURSOR_SIZE,108"
      "XCURSOR_SIZE,32"
      # "HYPRCURSOR_SIZE,108"
      # "GTK_THEME, Catppuccin-Macchiato-Standard-Teal-Dark:dark"

      # Misc
      "GDK_BACKEND, wayland, x11"
      "CLUTTER_BACKEND, wayland"

      # XDG
      "XDG_CURRENT_DESKTOP, Hyprland"
      "XDG_SESSION_DESKTOP, Hyprland"
      "XDG_SESSION_TYPE, wayland"

      # QT
      # "QT_AUTO_SCREEN_SCALE_FACTOR, 1"
      # "QT_QPA_PLATFORM, wayland;xcb"
      # "QT_WAYLAND_DISABLE_WINDOWDECORATION, 1"
      # "QT_QPA_PLATFORMTHEME, qt5ct"
      # "QT_SCALE_FACTOR, 1"

      # TODO check below

      "WLR_NO_HARDWARE_CURSORS, 1" 
      # "WLR_RENDERER_ALLOW_SOFTWARE, 1"

      # "WLR_RENDERER, vulkan"

      # "MOZ_ENABLE_WAYLAND,1" firefox ?
      # "WLR_DRM_DEVICES,/dev/dri/card1:/dev/dri/card2" GPU to dedicated ?
      
    ];

  };

}
