{
  description = "NixOS configurations";

  inputs =  
  {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, lib }:
    let
      systems = ["x86_64-linux-gnu"];
    in
  {
    nixosConfigurations.iridium = lib.nixosSystem {
      inherit systems;
      modules = [
        ./configuration.nix
      ];
    };
  };
}
