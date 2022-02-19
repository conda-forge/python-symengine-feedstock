pip install . \
  --global-option="build_ext" \
  --global-option="--generator=Ninja" \
  --global-option="install" \
  --global-option="--symengine-dir=%LIBRARY_PREFIX%" \
  -vv
  
