let
  # Import sources
  sources = import ./nix/sources.nix;

  erlang_latest = import ./erlang-23.2.5;

  pkgs = import sources.nixpkgs {
    overlays = [
      (self: super: {
        inherit erlang_latest;
      })
    ];
  };

# And return that specific nixpkgs
in pkgs
