{ lib, buildPythonPackage, fetchurl, pytest, six }:

buildPythonPackage rec {
  pname = "ppft";
  version = "1.6.6.4";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/6b/89/871fdf9f6b295559099de627d56e8a5d052d2654c80e249a71b10037f232/ppft-1.6.6.4.zip";
    sha256 = "1lk30h3d1gb0qmrkllp4gl0211xr9d2npg95pn86k19icz644d27";
  };

  doCheck = false;

  buildInputs = [
    six
  ];

  meta = with lib; {
    description = "ppft is a fork of Parallel Python, and is developed as part of pathos.";
    homepage = "https://github.com/uqfoundation/ppf";
    license = licenses.bsd3;
    maintainers = with maintainers; [ jmercouris ];
  };

}
