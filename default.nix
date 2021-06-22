let
  sources = import ./nix/sources.nix {};
  haskellNix = import sources."haskell.nix" {};
  pkgs = import haskellNix.sources.nixpkgs-2009 haskellNix.nixpkgsArgs;
in pkgs.haskell-nix.project {
  src = ./.;
  compiler-nix-name = "ghc8104";
}
