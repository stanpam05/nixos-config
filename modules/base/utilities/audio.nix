# Installing Audio server
{ pkgs, ... }:

{
  
  # Enabling pipewire
  services.pipewire.enable = true;

  # Ensuring pulseaudio is disabled
  hardware.pulseaudio.enable = false;

}