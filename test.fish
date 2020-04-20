source functions/gencomplete.fish

@test "ps" (gencomplete ps --help all) = ''

@test "help" (
  gencomplete
) = 'Usage: gencomplete binaryInPath [--help-key-of-binary]'

