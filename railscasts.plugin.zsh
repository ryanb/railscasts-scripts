export RAILSCASTS="$HOME/Projects/RailsCasts/Episodes"

rc() { cd $RAILSCASTS/$1; }
_rc() { _files -W $RAILSCASTS -/; }
compdef _rc rc

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
