{ lib, buildPythonPackage, fetchurl, pytest }:

buildPythonPackage rec {
  pname = "dill";
  version = "0.3.4";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/57/b7/c4aa04a27040e6a3b09f5a652976ead00b66504c014425a7aad887aa8d7f/dill-0.3.4.zip";
    sha256 = "0xg677bq9jig7pw2libqmvfvcdq20zq9mv1zmd9v7cj6a4h395wz";
  };

  doCheck = false;

  meta = with lib; {
    description = "dill extends python's pickle module for serializing and de-serializing python objects to the majority of the built-in python types.";
    homepage = "https://github.com/uqfoundation/dill";
    license = licenses.bsd3;
    maintainers = with maintainers; [ jmercouris ];
  };

}
