{
  description = "NixOS configurations";

  inputs =  
  {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs, flake-utils }:
  {
    nixosConfigurations.iridium = nixpkgs.lib.nixosSystem {
      systems = "x86_64-linux";
      modules = [
        ./profiles/iridium.nix
      ];
    };
  };
}
