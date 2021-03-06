# gencomplete

[![Build Status][travis-badge]][travis-link]



Generate fish completions using command's --help

## Install

```
# fisher
fisher slavaGanzin/fish-gencomplete
# fundle:
sed -i "1ifundle plugin 'slavaGanzin/fish-gencomplete'" -i ~/.config/fish/config.fish

```

## Usage

```sh
gencomplete systemctl
gencomplete ss
gencomplete jupyter --help
gencomplete yourBinary --your-show-help-argument

```

## Prerequisites
[help2man](https://www.gnu.org/software/help2man/):
```sh
#Debian/Ubuntu
sudo apt-get install help2man

#Arch
sudo pacman -S help2man

```

[travis-link]: https://travis-ci.org/slavaGanzin/fish-gencomplete
[travis-badge]: https://travis-ci.org/slavaGanzin/fish-gencomplete.svg?branch=master
[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
