{ lib, buildPythonPackage, fetchFromGitHub, pytest }:

buildPythonPackage rec {
  pname = "cadcad";
  version = "0.4.28";

  src = fetchFromGitHub {
    owner = "interlock-network";
    repo = pname;
    rev = "v${version}";
    sha256 = "0vqp5rh3wcyv5rmhqnhqs08hdnbp8x66wfayf05pz5hkfk8sxpis";
  };

  checkInputs = [ pytest ];

  meta = with lib; {
    description = "cadCAD is a Python package that assists in the processes of designing, testing and validating complex systems through simulation, with support for Monte Carlo methods, A/B testing and parameter sweeping.";
    homepage = "https://github.com/cadCAD-org/cadCAD";
    license = licenses.mit;
    maintainers = with maintainers; [ jmercouris ];
  };

}
