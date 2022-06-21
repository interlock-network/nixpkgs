{ lib, buildPythonPackage, fetchurl, pytest }:

buildPythonPackage rec {
  pname = "async-timeout";
  version = "4.0.2";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/54/6e/9678f7b2993537452710ffb1750c62d2c26df438aa621ad5fa9d1507a43a/async-timeout-4.0.2.tar.gz";
    sha256 = "05bbjz16n1a7m1s3lmcwri2x5rc7hnh6f2hdr2lbflnv1mjf2qr1";
  };

  doCheck = false;

  meta = with lib; {
    description = "asyncio-compatible timeout context manager.";
    homepage = "https://github.com/aio-libs/async-timeout";
    license = licenses.asl20;
    maintainers = with maintainers; [ jmercouris ];
  };

}
