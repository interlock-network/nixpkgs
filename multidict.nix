{ lib, buildPythonPackage, fetchurl, pytest }:

buildPythonPackage rec {
  pname = "multidict";
  version = "6.0.2";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/fa/a7/71c253cdb8a1528802bac7503bf82fe674367e4055b09c28846fdfa4ab90/multidict-6.0.2.tar.gz";
    sha256 = "04xhddyvb725w62f6az29hf842s39mxdzwkhykql6k4fydsvvwsz";
  };

  doCheck = false;

  meta = with lib; {
    description = "Multidict is dict-like collection of key-value pairs where key might be occurred more than once in the container.";
    homepage = "https://github.com/aio-libs/multidict";
    license = licenses.asl20;
    maintainers = with maintainers; [ jmercouris ];
  };

}
