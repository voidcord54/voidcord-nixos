{
  description = "Voidcord flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    
  };

  outputs = { self, nixpkgs , home-manager, ...}: {

    nixosConfigurations.voidcord-nixos = nixpkgs.lib.nixosSystem {
      modules = [ 
        ./main.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.future = ./home.nix;
        } 
        ];
    };

  };
}
