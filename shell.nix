with import <nixpkgs> {};

# define function my-python-package
let
  my-python-package = ps: ps.callPackage ./readme.nix {};

in
(pkgs.python38.withPackages (ps: with ps; [
  # call function my-python-package with argument ps
  (my-python-package ps)
  ipykernel 
  jupyterlab
  matplotlib
  numpy
  pandas
])).env
