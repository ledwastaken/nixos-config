# User configuration.
{ pkgs, ... }:

{
  # Define the user account.
  users.users.louis = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      discord
    ];
  };
}
