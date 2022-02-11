with import <nixpkgs> {};

# define function my-python-package
let
  pathos = ps: ps.callPackage ./pathos.nix {
    pox = ps.callPackage ./pox.nix {};
    dill = ps.callPackage ./dill.nix {};
    multiprocess = ps.callPackage ./multiprocess.nix {
      dill = ps.callPackage ./dill.nix {};
    };
    ppft = ps.callPackage ./ppft.nix {};
  };

in
(pkgs.python38.withPackages (ps: with ps; [
  # call function my-python-package with argument ps
  (pathos ps)
  ipykernel 
  jupyterlab
])).env
