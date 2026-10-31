set "CMAKE_GENERATOR="
set "CMAKE_GENERATOR_PLATFORM="
set "CMAKE_GENERATOR_TOOLSET="
%PYTHON% -m pip install . -vv --no-deps --no-build-isolation --disable-pip-version-check -Ccmake.define.SymEngine_DIR=%LIBRARY_PREFIX%
if errorlevel 1 exit 1
