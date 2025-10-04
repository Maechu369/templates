{
  description = "A very basic flake for develop";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        lib = pkgs.lib;
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs;
            [ git docker ] ++ (with python313Packages; [
              python
              numpy
              matplotlib
              pandas
              scipy
              sympy
              numba
            ]);
          PYTHONCACHEPREFIX = "/tmp";
          pure = true;
          shellHook = ''
            PYTHONPATH=$PYTHONPATH:$(pwd)/src
            export PYTHONPATH
            exec zsh
          '';
        };
      });
}

