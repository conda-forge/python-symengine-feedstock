%PYTHON% setup.py build_ext --generator=Ninja --symengine-dir=%LIBRARY_PREFIX% bdist_wheel -vv
%PYTHON% -m pip install dist\symengine*.whl
