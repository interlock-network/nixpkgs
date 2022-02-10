{ lib, buildPythonPackage, fetchurl, pytest, dill }:

buildPythonPackage rec {
  pname = "multiprocess";
  version = "0.70.12.2";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/99/1a/472900644359cdd208d1fbe71706bdeecbc6e8db2e39c35ebe89459e9172/multiprocess-0.70.12.2.zip";
    sha256 = "10x0alld0l3iph54a9a2m1m2al19fvw1jnni3vn7zy3kgfwvjsr0";
  };

  doCheck = false;

  buildInputs = [
    dill
  ];

  meta = with lib; {
    description = "multiprocessing is a package for the Python language which supports the spawning of processes using the API of the standard library’s threading module.";
    homepage = "https://github.com/uqfoundation/multiprocess";
    license = licenses.bsd3;
    maintainers = with maintainers; [ jmercouris ];
  };

}
