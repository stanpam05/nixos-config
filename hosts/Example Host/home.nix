# Home file
{ config, pkgs, variables, ... }:

{

  # Import home modules here
  imports = [

  ];

  # Setting the username
  home.username = variables.user.username;

  # Setting the home directory
  home.homeDirectory = "/home/${variables.user.username}";

  # Stating the original home manager version
  home.stateVersion = "26.05";

}