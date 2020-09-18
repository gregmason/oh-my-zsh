# see if pandoc is installed, then create 
if command -v pandoc >/dev/null 2>&1
then
  source ${0:h}/pandoc.zsh
fi