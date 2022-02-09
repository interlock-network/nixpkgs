{ lib, buildPythonPackage, fetchFromGitHub, pytest }:

buildPythonPackage rec {
  pname = "pox";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "noxrepo";
    repo = pname;
    rev = "5f82461e01f8822bd7336603b361bff4ffbd2380";
    sha256 = "1xdkf99wz9sz8fwc80hl8r0zq4kbn36zs6fsb0s6998pg4ibkb0l";
  };

  checkInputs = [ pytest ];

  meta = with lib; {
    description = "POX is a networking software platform written in Python.";
    homepage = "https://github.com/noxrepo/pox";
    license = licenses.mit;
    maintainers = with maintainers; [ jmercouris ];
  };

}
