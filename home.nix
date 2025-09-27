{ config, pkgs, ... }:

{
  home.username = "future";
  home.homeDirectory = "/home/future";

  programs.home-manager.enable = true;

  # stateVersion should match the version your user environment is based on
  home.stateVersion = "25.05";

  # example: install packages for your user
  home.packages = with pkgs; [
  	firefox
    neovim
    obsidian
    google-chrome
    microsoft-edge
    fastfetch
    gnome-extension-manager
    discord
    hugo
  ];

  programs.zsh = {
  enable = true;
  enableCompletion = true;
  syntaxHighlighting.enable = true;
  autosuggestions.enable = true;

  shellAliases = {
    btw = "echo 'i use nixos btw'";
  };
};

}
