# Responsible for installing and configuring pwvucontrol, a volume mixer for pipewire
{ pkgs, ... }:

{

  # Installing pwvucontrol
  home.packages = with pkgs; [

    pwvucontrol

  ];

}