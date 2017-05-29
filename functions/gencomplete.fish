function gencomplete --description "Generate fish completions using command's --help" --argument name
  set -l compdir ~/.config/fish/completions

	if test -z $name
    echo Usage: gencomplete binaryInPath [--help-key-of-binary]
    return 127
  end

  test -z $help; and set -l help --help

  mkdir /tmp/man ^/dev/null
  set -l mp /tmp/man/$name.1
  help2man $name -h "$help" -o $mp

  python -B $__fish_datadir/tools/create_manpage_completions.py --progress $mp --directory $compdir

  source $compdir/$name.fish

  rm $mp
end
