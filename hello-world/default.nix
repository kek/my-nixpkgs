with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "hello-world-1.0.0";
  builder = ./builder.sh;
  src = ./src;
}
