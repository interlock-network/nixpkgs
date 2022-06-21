{ lib, buildPythonPackage, fetchurl, pytest }:

buildPythonPackage rec {
  pname = "idna";
  version = "3.3";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz";
    sha256 = "0v8f6qjfi5i7qc5icsbv2pi24qy6k6m8wjqjvdf2sxjvlpq3yr4x";
  };

  doCheck = false;

  meta = with lib; {
    description = "Support for the Internationalised Domain Names in Applications (IDNA) protocol as specified in RFC 5891.";
    homepage = "https://github.com/kjd/idna";
    license = licenses.bsd3;
    maintainers = with maintainers; [ jmercouris ];
  };

}
