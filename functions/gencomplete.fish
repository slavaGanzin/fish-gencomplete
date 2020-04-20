function gencomplete --description "Generate fish completions using command's --help" --argument name
	if test -z $name
    echo Usage: gencomplete binaryInPath [--help-key-of-binary]
    return 0
  end

  test -z $help; and set -l help --help

  set man_dir (dirname (/usr/bin/man -Ww man))

  /usr/bin/man -Ww $name 1>/dev/null

  if test $status -ne 0
    help2man $name -h "$help" -o $man_dir/$name.1 --no-discard-stderr
    gzip $man_dir/$name.1
  end

  python -B /usr/share/fish/tools/create_manpage_completions.py (/usr/bin/man -Ww $name) -v3

  fish
end
