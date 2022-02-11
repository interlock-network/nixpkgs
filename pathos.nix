{ lib, buildPythonPackage, fetchFromGitHub, pytest, pox, dill, multiprocess, ppft }:

buildPythonPackage rec {
  pname = "pathos";
  version = "pathos-0.2.8";

  src = fetchFromGitHub {
    owner = "uqfoundation";
    repo = pname;
    rev = "${version}";
    sha256 = "10vssdz7v5v13wyqf4h77g8avs7jk4rp1c3anj6ba5dpdxl4qn7g";
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
