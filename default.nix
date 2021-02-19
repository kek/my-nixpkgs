let
  sources = import ./nix/sources.nix;

  test_hello = import ./test-hello;
  hello_world = import ./hello-world;

  pkgs = import sources.nixpkgs {
    overlays = [
      (self: super: {
        inherit test_hello;
        inherit hello_world;
      })
    ];
  };

in pkgs
