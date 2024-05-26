{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python12
    pkgs.python12Packages.numpy
    pkgs.python12Packages.pandas
    pkgs.python12Packages.matplotlib
    pkgs.python12Packages.seaborn
    pkgs.python12Packages.jupyterlab
  ];

  shellHook = ''
    export PYTHONPATH=$PYTHONPATH:$(pwd)/src
  '';
}
