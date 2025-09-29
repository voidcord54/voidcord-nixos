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
    obsidian
    google-chrome
    microsoft-edge
    fastfetch
    clinfo
    obs-studio
    vlc
    blender
    auto-editor
    mediawriter
  ];


}
