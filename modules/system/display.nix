# Display configuration.
{ ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Use i3 as the window manager.
  services.xserver.windowManager.i3.enable = true;

  # Use ly as the display manager.
  services.displayManager.ly.enable = true;
}
