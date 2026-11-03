# This file is needed to ensure hyprland is enabled on the system level
{ pkgs, ... }:

{
  programs.hyprland.enable = true;
}