{
  description = "NixOS configurations";

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.gh = nixpkgs.gh;
    packages.x86_64-linux.git = nixpkgs.git;
    packages.x86_64-linux.starship = nixpkgs.starship;
    packages.x86_64-linux.zsh-autosuggestions = nixpkgs.zsh-autosuggestions;
    packages.x86_64-linux.zoxide = nixpkgs.zoxide;
    packages.x86_64-linux.btop = nixpkgs.btop;
    #packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;
    #packages.x86_64-linux.default = self.packages.x86_64-linux.hello;
  };
}
