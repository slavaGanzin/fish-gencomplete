function gencomplete --description "Generate fish completions using command's --help" --argument name
  set -l compdir ~/.config/fish/completions

	if test -z $name
    echo Usage: gencomplete binaryInPath [--help-key-of-binary]
    return 127
  end

  test -z $help; and set -l help --help

  mkdir /tmp/man ^/dev/null
  set -l mp /tmp/man/$name.1

  set man_path (man -Ww ls)

  if test -z "$man_path"
    help2man $name -h "$help" -o $mp --no-discard-stderr
  else
    cat man_path | gunzip > $mp
  end

  python -B $__fish_datadir/tools/create_manpage_completions.py --progress $mp --directory $compdir

  source $compdir/$name.fish

  rm $mp
end
