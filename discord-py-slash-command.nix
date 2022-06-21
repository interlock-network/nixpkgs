{ lib, buildPythonPackage, fetchurl, pytest, aiohttp }:

buildPythonPackage rec {
  pname = "discord-py-slash-command";
  version = "4.2.1";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/bc/81/0db736ae58f607aee1786f90f77bf6f3df03e1b82467aacc68e96e529c01/discord-py-slash-command-4.2.1.tar.gz";
    sha256 = "03pfach6km90r6ck7l12c79v9bl4a0d2dirpyq45hqs4bp24dp67";
  };

  doCheck = false;

    propagatedBuildInputs = [
      aiohttp
  ];


  meta = with lib; {
    description = "Easy, simple, scalable and modular: a Python API wrapper for interactions.";
    homepage = "https://github.com/interactions-py/library";
    license = licenses.gpl3;
    maintainers = with maintainers; [ jmercouris ];
  };

}
