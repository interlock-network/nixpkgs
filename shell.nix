with import <nixpkgs> {};

let
  cadcad = ps: ps.callPackage ./cadcad.nix {
    dill = ps.callPackage ./dill.nix {};
    pox = ps.callPackage ./pox.nix {};
    multiprocess = ps.callPackage ./multiprocess.nix {
      dill = ps.callPackage ./dill.nix {};
    };
    ppft = ps.callPackage ./ppft.nix {};

    pathos = ps.callPackage ./pathos.nix {
      pox = ps.callPackage ./pox.nix {};
      dill = ps.callPackage ./dill.nix {};
      multiprocess = ps.callPackage ./multiprocess.nix {
        dill = ps.callPackage ./dill.nix {};
      };
      ppft = ps.callPackage ./ppft.nix {};
    };
  };

in
(pkgs.python38.withPackages (ps: with ps; [
  (cadcad ps)
  ipykernel 
  jupyterlab
])).env
