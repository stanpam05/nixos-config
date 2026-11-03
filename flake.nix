# My NixOS Flake
{

  description = "NixOS Flake";

  inputs = {

    # Using the unstable nixpackages
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Home-manager, follows nixpkgs
    home-manager = {

      # Sourcing home-manager from this url
      url = "github:nix-community/home-manager";

      # Follows nixpkgs
      inputs.nixpkgs.follows = "nixpkgs";

    };

  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      variables = import ./variables.nix;
    in
    {

      nixosConfigurations.${variables.host.hostname} = nixpkgs.lib.nixosSystem {

        system = variables.host.system;

        # Arguements passed into all nix modules
        specialArgs = { inherit inputs variables; }

        modules = [
          
          # Host specific configuration
          ./hosts/${variables.host.hostname}/default.nix

          # Home manager setup
          home-manager.nixosModules.home-manager
          {

            home-manager = {

              # Using global and user packages
              useGlobalPkgs = true;
              useUserPackages = true;

              # Declaring the user's home directory
              users.$(user.username) = ./hosts/${variables.host.hostname}/home.nix;

              # When a config file exists and Home Manager overwites it 
              # instead of deleting it, Home Manager will backup the config file
              # as a .backup file in the same directory as the original configuration
              backupFileExtension = "backup";

            };

          };

        ];

      };

    };

}