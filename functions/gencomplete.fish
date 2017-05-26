function gencomplete -d "Autogenerate completions for command using --help" --argument-names 'name' 'help'
  if test -z $name
    echo Usage: gencomplete yourbinary [--help-key]
    return 127
  end

  test -z $help; and set -l help --help

  mkdir /tmp/man ^/dev/null
  set -l mp /tmp/man/$name.1
  help2man $name -h $help -o $mp

  python -B $__fish_datadir/tools/create_manpage_completions.py --progress /tmp/man/$name $mp

  rm $mp
end
