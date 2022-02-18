pip install . \
  --global-option="build_ext" \
  --global-option="--generator=Ninja install" \
  --global-option="build_ext" \
  --global-option="--symengine-dir=%LIBRARY_PREFIX%" \
  -vv
  
