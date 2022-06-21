{ lib, buildPythonPackage, fetchurl, pytest, frozenlist, attrs, multidict, yarl, async-timeout, aiosignal, charset-normalizer }:

buildPythonPackage rec {
  pname = "aiohttp";
  version = "3.8.1";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/5a/86/5f63de7a202550269a617a5d57859a2961f3396ecd1739a70b92224766bc/aiohttp-3.8.1.tar.gz";
    sha256 = "0y3m1dzl4h6frg8vys0fc3m83ijd1plfpihv3kvmxqadlphp2m7w";
  };

  doCheck = false;

  propagatedBuildInputs = [
    frozenlist
    attrs
    multidict
    yarl
    async-timeout
    aiosignal
    charset-normalizer
  ];


  meta = with lib; {
    description = "Async http client/server framework.";
    homepage = "https://github.com/aio-libs/aiohttp";
    license = licenses.asl20;
    maintainers = with maintainers; [ jmercouris ];
  };

}
