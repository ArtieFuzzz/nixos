# Main configuration

{ pkgs, config, modulePaths, ... }:
  {
    imports = [ ./base.nix ];

    networking.hostName = "Aether"; # Astral, ToasterBox, Toaster, etc.

    environment.systemPackages = [
      pkgs.gh # Github CLI
      pkgs.git # Git
      pkgs.starship # Starship
      pkgs.zsh-autosuggestions
      pkgs.zoxide
      # Comment these out if you want other Browsers / Terminals
      pkgs.vivaldi
      pkgs.alacritty
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
