# Nix configuration.
{ ... }:

{
  # Allow unfree packages.
  nixpkgs.config.allowUnfree = true;

  # Enable nix flakes.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
