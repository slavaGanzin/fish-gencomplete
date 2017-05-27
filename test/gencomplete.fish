test "$BASENAME"
  'ls.1' == gencomplete ls | grep 'ls.1'
end

test "file"
  'complete' == cat ~/.config/fish/completions/ls.fish | grep -o complete | uniq 
end

