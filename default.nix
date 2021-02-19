let
  # Import sources
  sources = import ./nix/sources.nix;

  erlang_latest = import ./erlang-23.2.5;
  test_hello = import ./test-hello;

  pkgs = import sources.nixpkgs {
    overlays = [
      (self: super: {
        inherit erlang_latest;
        inherit test_hello;
      })
    ];
  };

# And return that specific nixpkgs
in pkgs
