{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default = import ./default.nix { pkgs = nixpkgs.legacyPackages.x86_64-linux; };
  };
}