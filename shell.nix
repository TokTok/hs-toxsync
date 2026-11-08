# Build and test with hTox's Haskell packages: `nix-shell --run 'cabal test'`.
let
  hatter = import ../htox/nix/hatter.nix;
  inherit (hatter) pkgs;
  hpkgs = (import "${hatter.src}/nix/hpkgs.nix" { inherit pkgs; }).extend (self: super: {
    toxsync = self.callCabal2nix "toxsync" ./. { };
  });
in
hpkgs.shellFor {
  packages = ps: [ ps.toxsync ];
  nativeBuildInputs = [ pkgs.cabal-install ];
}
