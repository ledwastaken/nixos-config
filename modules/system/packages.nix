# System packages.
{ pkgs, ... }:

{
  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
    vim
    wget
    alacritty
    tree
  ];
}
