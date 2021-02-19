let
  sources = import ./nix/sources.nix;

  test_hello = import ./test-hello;

  pkgs = import sources.nixpkgs {
    overlays = [
      (self: super: {
        inherit test_hello;
      })
    ];
  };

in pkgs
