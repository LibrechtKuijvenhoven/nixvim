{ pkgs, ... }: {
  programs.nixvim = {
    enable = true;

    # Import your existing config
    extraConfigModules = [ (import ./config) ];
  };
}
