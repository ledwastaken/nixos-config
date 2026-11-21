# Boot loader configuration (GRUB/UEFI).
{ ... }:

{
  # Allow NixOS to register/update the GRUB entry in the firmware.
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.enable = true;

  # UEFI-only: no legacy BIOS disk device is needed.
  boot.loader.grub.device = "nodev";

  boot.loader.grub.efiSupport = true;

  # Include other detected operating systems in the GRUB menu.
  boot.loader.grub.useOSProber = true;

  # No custom splash image; keep the default GRUB menu/theme.
  boot.loader.grub.splashImage = null;
}
