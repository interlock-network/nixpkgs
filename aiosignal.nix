{ lib, buildPythonPackage, fetchurl, pytest, frozenlist }:

buildPythonPackage rec {
  pname = "aiosignal";
  version = "1.2.0";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/27/6b/a89fbcfae70cf53f066ec22591938296889d3cc58fec1e1c393b10e8d71d/aiosignal-1.2.0.tar.gz";
    sha256 = "1wkxbdgw07ay8yzx3pg1jcm46p3d21rfb5g4k17ysz3vdkdngvbq";
  };

  doCheck = false;

  propagatedBuildInputs = [
    frozenlist
  ];

  meta = with lib; {
    description = "A project to manage callbacks in asyncio projects.";
    homepage = "https://github.com/aio-libs/aiosignal";
    license = licenses.asl20;
    maintainers = with maintainers; [ jmercouris ];
  };

}
