#Installing and configuring hyprland
{ pkgs, variables, theme, ... }:

{

  wayland.windowManager.hyprland = {
    
    # Enabling hyprland
    enable = true;

    
  };

}