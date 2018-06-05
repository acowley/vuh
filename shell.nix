with (import <nixpkgs> {});
let drv = callPackage ./default.nix {
};
in drv.overrideAttrs (old: {
  nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ cquery ];
  cmakeBuildType = "Debug";
})
