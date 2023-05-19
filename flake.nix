{
  description = "NixOS configurations";

  inputs =  
  {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
    in
  {
    nixosConfigurations.iridium = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./configuration.nix
        ./base.nix
      ];
    };
  };
}
