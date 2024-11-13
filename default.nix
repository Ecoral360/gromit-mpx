{ pkgs ? import <nixpkgs> { } }: with pkgs;
stdenv.mkDerivation (finalAttrs: {
  pname = "";
  version = "";

  src = ./.;

  nativeBuildInputs = [
    cmake
    pkg-config
    gtk3
    libappindicator
    lz4
    pcre2
  ];

  buildInputs = [
  ];

  buildPhase = '' 
    cmake .
  '';

  installPhase = ''
    make
    make install
    mkdir -p $out/bin
    cp gromit-mpx $out/bin
  '';

  meta = {
    description = "";
    homepage = "";
    license = lib.licenses.gpl2;
    maintainers = with lib.maintainers; [ ];
  };
})


# 450 688 6574
