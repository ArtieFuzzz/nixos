{
  description = "NixOS configurations";

  inputs =  
  {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkg }:
    let
      systems = ["x86_64-linux-gnu"];
    in
  {
    nixosConfigurations.iridium = nixpkg.lib.nixosSystem {
      inherit systems;
      modules = [
        ./configuration.nix
        ./base.nix
      ];
    };
  };
}
