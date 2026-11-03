{ variables, ... }:

{
  services.getty.autologinUser = variables.user.username;
}