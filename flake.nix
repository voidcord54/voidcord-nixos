{
  description = "Voidcord flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    nixosConfigurations.voidcord-nixos = nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
    };

  };
}
