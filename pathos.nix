{ lib, buildPythonPackage, fetchurl, pytest, pox, dill, multiprocess, ppft }:

buildPythonPackage rec {
  pname = "pathos";
  version = "pathos-0.2.8";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/66/74/2630ffec903fe3cb712f2c8a538d55422298a31461ff5370e9c6b97a93de/pathos-0.2.8.zip";
    sha256 = "05bgzh2z87v4jw0fbn5j2w6kdsgx028555m77d16rdks1yljf3qz";
  };

  checkInputs = [ pytest ];

  buildInputs = [
    pox
    dill
    multiprocess
    ppft
  ];

  meta = with lib; {
    description = "pathos is a framework for heterogeneous computing. It provides a consistent high-level interface for configuring and launching parallel computations across heterogeneous resources.";
    homepage = "https://pathos.readthedocs.io/en/latest/";
    license = licenses.mit;
    maintainers = with maintainers; [ jmercouris ];
  };

}
