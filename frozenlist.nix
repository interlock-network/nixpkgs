{ lib, buildPythonPackage, fetchurl, pytest }:

buildPythonPackage rec {
  pname = "frozenlist";
  version = "1.3.0";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/f4/f7/8dfeb76d2a52bcea2b0718427af954ffec98be1d34cd8f282034b3e36829/frozenlist-1.3.0.tar.gz";
    sha256 = "02svndp8kjp2zipvpgnjcj06zfnysa52jrb5jzcc3c5pxnh2nvyf";
  };

  doCheck = false;

  meta = with lib; {
    description = "frozenlist.FrozenList is a list-like structure which implements collections.abc.MutableSequence.";
    homepage = "https://github.com/aio-libs/frozenlist";
    license = licenses.asl20;
    maintainers = with maintainers; [ jmercouris ];
  };

}
