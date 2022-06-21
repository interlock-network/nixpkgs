{ lib, buildPythonPackage, fetchurl, pytest }:

buildPythonPackage rec {
  pname = "charset-normalizer";
  version = "2.1.0";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/93/1d/d9392056df6670ae2a29fcb04cfa5cee9f6fbde7311a1bb511d4115e9b7a/charset-normalizer-2.1.0.tar.gz";
    sha256 = "04zlajr77f6c7ai59l46as1idi0jjgbvj72lh4v5wfpz2s070pjp";
  };

  doCheck = false;

  meta = with lib; {
    description = "A library that helps you read text from an unknown charset encoding.";
    homepage = "https://github.com/ousret/charset_normalizer";
    license = licenses.mit;
    maintainers = with maintainers; [ jmercouris ];
  };

}
