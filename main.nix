{ pkgs, config, modulePaths, ... }:
{
  networking = {
    nameservers = [ "1.1.1.1" "9.9.9.9" ];
    hostName = "lab"; # Aether, Astral, ToasterBox, Toaster, etc.
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  system.autoUpgrade = {
    enable = true;
  };

  environment.systemPackages = [
    pkgs.gh # Github CLI
    pkgs.git # Git
    pkgs.starship # Starship
    pkgs.zsh-autosuggestions
    pkgs.zoxide
    pkgs.btop
  ];

  environment.pathsToLink = [ "/share/zsh" ];

  programs.zsh = {
    enable = true;    
    ohMyZsh = {
      enable = true;
      plugins = [
        "gitignore"
        "git-auto-fetch"
        "zoxide"
        "starship"
        "systemd"
        "systemadmin"
      ];
    };
    shellAliases = {
      cd = "z";
      top = "btop";
    };
    autosuggestions.enable = true;
  };

  users.extraUsers.nixos = {
    shell = pkgs.zsh;
  };
}
