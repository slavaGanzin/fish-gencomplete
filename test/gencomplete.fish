test "$BASENAME"
  'ps.1' == gencomplete ps '--help all' | grep 'ps.1'
end

test "file"
  'complete' == cat ~/.config/fish/completions/ps.fish | grep -o complete | uniq
end

