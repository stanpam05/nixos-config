# Installing and configuring foot, a terminal emulator
{ pkgs, variables, theme, ... }:

{

  programs.foot = {

    # Enabling foot
    enable = true;

    # Declaring the foot package to use
    programs.foot.package = pkgs.foot;

    # Configuring foot
    settings = {

      main = {
        font = "${theme.font}:size=11";
      };

      mouse = {

        hide-when-typing = "yes";
        
      };

      colors = {

        alpha = 0.85;
        background = builtins.substring 1 6 theme.colors.background;
        foreground = builtins.substring 1 6 theme.colors.text;

      };

    };

  };

}