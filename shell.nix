{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    git
    libsass
    nodejs-16_x
    openssl
    python27
    yarn
  ];
}
