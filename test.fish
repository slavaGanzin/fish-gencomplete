# test "$BASENAME"
#   'ps.1' == gencomplete ps '--help all' | grep 'ps.1'
# end
#
# test "file"
#   'complete' == cat ~/.config/fish/completions/ps.fish | grep -o complete | uniq
# end
#

@test "help" (
  gencomplete
) = 'Usage: gencomplete binaryInPath [--help-key-of-binary]'

@test "help -h" (
  gencomplete -h
) = 'Usage: gencomplete binaryInPath [--help-key-of-binary]'

@test "help --help" (
  gencomplete --help
) = 'Usage: gencomplete binaryInPath [--help-key-of-binary]'

