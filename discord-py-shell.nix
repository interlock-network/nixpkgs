with import <nixpkgs> {};

let
  discord-py = ps: ps.callPackage ./discord-py-slash-command.nix {
    aiohttp = ps.callPackage ./aiohttp.nix {
      frozenlist = ps.callPackage ./frozenlist.nix {};
      multidict = ps.callPackage ./multidict.nix {};
      yarl = ps.callPackage ./yarl.nix {
        multidict = ps.callPackage ./multidict.nix {};
      };
      aiosignal = ps.callPackage ./aiosignal.nix {
        frozenlist = ps.callPackage ./frozenlist.nix {};
      };

    };
  };

in
(pkgs.python38.withPackages (ps: with ps; [
  (discord-py ps)
  ipykernel
  jupyterlab
])).env
