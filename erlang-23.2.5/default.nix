{ pkgs ? import <nixpkgs> {}
}:

pkgs.erlangR23.overrideDerivation (old: {
  sha256 = "1vhxxsxzkqazi1dwpzbhkwy6adccf24yvzm50hs7p0rbv99mprjn";
  version = "23.2.5";
  name = "erlang_23_2_5";
})
