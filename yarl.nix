{ lib, buildPythonPackage, fetchurl, pytest, idna, multidict }:

buildPythonPackage rec {
  pname = "yarl";
  version = "1.7.2";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/f6/da/46d1b3d69a9a0835dabf9d59c7eb0f1600599edd421a4c5a15ab09f527e0/yarl-1.7.2.tar.gz";
    sha256 = "1panip1y3jn0yyr80g2xbzpgq290fmb9isb0lhkk698csr39nfa5";
  };

  doCheck = false;

  propagatedBuildInputs = [
    idna
    multidict
  ];

  meta = with lib; {
    description = "Yet another URL library.";
    homepage = "https://github.com/aio-libs/yarl/";
    license = licenses.asl20;
    maintainers = with maintainers; [ jmercouris ];
  };

}
