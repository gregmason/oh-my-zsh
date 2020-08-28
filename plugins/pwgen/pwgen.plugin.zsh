function pwgen() {
  PWLENGTH=${1-32};
  cat /dev/random | LC_ALL=C tr -cd \[:alnum:\] | head -c $PWLENGTH;echo;
}
