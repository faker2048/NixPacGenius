{
  description = "A collection of carefully curated Nix packages. This repository features a variety of useful tools, aiming to enhance productivity and streamline development tasks.";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux = {

      # Add your packages here.
      # myPackage = import ./myPackage { inherit nixpkgs; };
    };

    # Add more system types like aarch64-linux, if you need them.
  };
}
