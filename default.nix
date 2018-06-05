{ stdenv, cmake, glslang, catch2, vulkan-loader }:
stdenv.mkDerivation rec {
  name = "vuh-${version}";
  version = "2018-06-04";
  src = stdenv.lib.sourceByRegex ./. [
    "^src$"
    "^src/.*\.cpp$"
    "^src/CMakeLists\.txt$"
    "^src/include$"
    "^src/include/vuh$"
    "^src/include/vuh/.*\.h.*$"
    "^src/include/vuh/arr$"
    "^src/include/vuh/arr/.*\.h.*$"
    "^CMakeLists\.txt$"
    "^test$"
    "^test/CMakeLists.txt$"
    "^test/correctness$"
    "^test/correctness/.*"
    "^test/performance$"
    "^test/performance/.*"
    "^test/shaders$"
    "^test/shaders/.*" ];
  nativeBuildInputs = [ cmake glslang catch2 ];
  propagatedBuildInputs = [ vulkan-loader ];
}
