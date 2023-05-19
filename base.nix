{
  environment.systemPackages = [
    pkgs.btop
    pkgs.neofetch
  ];

  system.autoUpgrade = {
    enable = true;
  };

  networking.nameservers = [ "1.1.1.1" "9.9.9.9" ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
}