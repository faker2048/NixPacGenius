{
  description = "A collection of carefully curated Nix packages. This repository features a variety of useful tools, aiming to enhance productivity and streamline development tasks.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    inputs.utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        packages = {
          whisper-cpp = pkgs.callPackage ./pkgs/whisper-cpp { };
        };
      });
}
