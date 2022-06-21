{ lib, buildPythonPackage, fetchurl, pytest }:

buildPythonPackage rec {
  pname = "attrs";
  version = "21.4.0";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/d7/77/ebb15fc26d0f815839ecd897b919ed6d85c050feeb83e100e020df9153d2/attrs-21.4.0.tar.gz";
    sha256 = "1zg2fvq1ddzmsm2mqi3j5nhl0k3w2c526xnzd7l9inqi88ishsv2";
  };

  doCheck = false;

  meta = with lib; {
    description = "attrs is the Python package that will bring back the joy of writing classes by relieving you from the drudgery of implementing object protocols (aka dunder methods).";
    homepage = "https://www.attrs.org/en/stable/";
    license = licenses.mit;
    maintainers = with maintainers; [ jmercouris ];
  };

}
