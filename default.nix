let
  # Import sources
  sources = import ./nix/sources.nix;

  erlang_23_2_5 = import ./erlang-23.2.5;

  pkgs = import sources.nixpkgs {
    overlays = [
      (self: super: {
        inherit erlang_23_2_5;
      })
    ];
  };

# And return that specific nixpkgs
in pkgs
