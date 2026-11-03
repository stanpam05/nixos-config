# This is an example theme for those who want to make their own theme
# Although there are 3 themes prepackad
# This file includes fonts, color scheming, and assets
{

  # Setting the wallpaper
  wallpaper = ../assets/nixlogo-wallpaper.png;

  # The Font, make sure it's installed in the selected host's default.nix
  font = "Jetbrains Mono";

  # Theming takes a long time, especially with colors, what I reccomend is using an AI Model
  # tp generate colors in this format based on a background image.
  colors = {

      # Backgrounds
      background = "#24273A";
      foreground = "#2A2D42";
      overlay = "#363A4F";

      # Foreground / text
      text = "#CAD0E8";
      text-muted = "#939AB7";
      text-subtle = "#6E7694";

      # Accents
      primary = "#8AADF4";
      secondary = "#B7A1E8";
      tertiary = "#8BD5CA";

      # Additional colors
      red = "#ED8796";
      orange = "#F5A97F";
      yellow = "#EED49F";
      green = "#A6DA95";
      cyan = "#91D7E3";
      blue = "#8AADF4";
      purple = "#C6A0F6";
      pink = "#F5BDE6";

      # UI elements
      border = "#494D64";
      selection = "#414665";
      cursor = "#CAD0E8";

  };

}