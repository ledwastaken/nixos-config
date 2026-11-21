# Internationalisation configuration.
{ ... }:

{
  # Set the default locale.
  i18n.defaultLocale = "en_US.UTF-8";

  # Use a French keyboard on the console.
  console.keyMap = "fr";

  # Use a French keyboard in X11.
  services.xserver.xkb = {
    layout = "fr";
    variant = "";
  };
}
