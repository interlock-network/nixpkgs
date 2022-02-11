{ lib, buildPythonPackage, fetchurl, pathos, pytz, pandas, funcy, fn, dill, pox, multiprocess, ppft }:

buildPythonPackage rec {
  pname = "cadcad";
  version = "0.4.28";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/b3/d2/43e80c18c8032f77e43d74e5e1b7d75463528641ea5f68127683f6a97d71/cadCAD-0.4.28.tar.gz";
    sha256 = "0zrnbwnxvf0ncmq8gmlmx00jdffay3z48i8ncpvx26bjjwjg24d4";
  };

  doCheck = false;

  buildInputs = [
    ppft
    multiprocess
    pox
    dill
    pathos
    pytz
    pandas
    funcy
    fn
  ];

  meta = with lib; {
    description = "cadCAD is a Python package that assists in the processes of designing, testing and validating complex systems through simulation, with support for Monte Carlo methods, A/B testing and parameter sweeping.";
    homepage = "https://github.com/cadCAD-org/cadCAD";
    license = licenses.mit;
    maintainers = with maintainers; [ jmercouris ];
  };

}
