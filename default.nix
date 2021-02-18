let
  # Import sources
  sources = import ./nix/sources.nix;

  erlang_23_2_5 = import ./erlang-23.2.5/default.nix;
  pkgs = import sources.nixpkgs {
    overlays = [
      erlang_23_2_5
    ];
  };

# And return that specific nixpkgs
in pkgs
