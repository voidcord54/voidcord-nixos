{ config, pkgs, ... }:

{
  users.users.future = {
    isNormalUser = true;
    description = "future";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };
}
