# http://stackoverflow.com/questions/7650438/bash-funcname-value-expanding
# Required for the alias trick to work

shopt -s expand_aliases

green() {
  echo -e "\033[32m$1\033[0m"
}

red() {
  echo -e "\033[31m$1 $2\033[0m"
  notify-send -t 20000 "$1" "$2"
}



assertEqual() {
  if [[ "$3" != "$4" ]]; then
    echo ''
    #notify-send ""
    red "  $1" "error"
    echo ''
    echo "You have not yet reached enlightenment ..."
    red  "  Expected '$3'" " got '$4'"
    echo ''
    echo "Please meditate on the following code:"
    local filename=`grep  $1 src/*.sh -l`
    red  "  $filename:$2"
    echo ''
    # echo "You are now 10/291 koans and 2/36 lessons away from reaching enlightenment"
    exit 1
  fi
}
# This allows us to get the name of the functionw where this function was called
# http://stackoverflow.com/questions/7650438/bash-funcname-value-expanding
alias assertEqual='assertEqual ${FUNCNAME} ${LINENO}'
