{
  description = "NixOS configurations";

  inputs =  
  {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      systems = ["x86_64-linux-gnu"];
    in
  {
    nixosConfigurations.iridium = nixpkgs.lib.nixosSystem {
      inherit systems;
      modules = [
        ./configuration.nix
        ./base.nix
      ];
    };
  };
}
