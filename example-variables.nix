# This is only an example of variables nix, when you want to use this
# setup, you have to copy this file and rename it "variables.nix" and fill
# in the information. (Required variables are located at the top)

{

  # User info, these variables are required
  user = {
    username = "example username";
  };

  # Device and host info, these variables are required
  host = {

    # Hostname: picks which host will be loaded
    hostname = "example host";

    # Declare the type of your system, usually x86_64-linux
    system = "x86_64-linux";

  };

  # These following variables are required and self explanitory

  timezone = "America/New_York";

  keyboard = {
    layout = "us";
    variant = "";
  };

  # This is setup to use E
  defaultLocale = "en_US.UTF-8";

  # Theme, this is required
  # Should be the name of the theme file that resides in 
  # The themes folder (without the .nix at the end)
  theme = "example-theme"; 

  # Monitors, this is used for desktop configurations, This is only needed when using a desktop interface
  # The format is { name = "Monitor name"; resolution = "XRESxYRES@HZ"; orientation = "0-4"; position = "XxY"; }
  # You can add as many monitors as you want here
  monitors = [
    # Here is an example:
    { name = "DP-1"; resolution = "1920x1080@180.00Hz"; orientation = "0"; position = "0x0"; }
  ];

  # Git configuration, only needed while using the git modules (included in the development module)
  git = {
    email = "youremail@email.com";
    name = "Your Name";
  };

}