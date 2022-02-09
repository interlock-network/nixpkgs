{ lib, buildPythonPackage, fetchurl }:

buildPythonPackage rec {
  pname = "pox";
  version = "0.3.0";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/b9/bc/d348b6372b72fea32be294481e068659d277db3fb49be08f7955c5a55425/pox-0.3.0.zip";
    sha256 = "0cdy58z543gf2va5bvx0gbyscfpchx2hh8asj2s6nil6n58875nb";
  };

  meta = with lib; {
    description = "POX is a networking software platform written in Python.";
    homepage = "https://github.com/noxrepo/pox";
    license = licenses.asl20;
    maintainers = with maintainers; [ jmercouris ];
  };

}
