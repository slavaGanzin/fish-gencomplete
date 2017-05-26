# gencomplete

[![Build Status][travis-badge]][travis-link]
[![Slack Room][slack-badge]][slack-link]

Generate fish completions using command's --help

## Install


With [fisherman]

```
fisher slavaGanzin/fish-gencomplete
```

You need [help2man](https://www.gnu.org/software/help2man/) installed to run this plugin

## Usage

```fish
gencomplete binaryInPath [--help-key-of-binary]
```

[travis-link]: https://travis-ci.org/slavaGanzin/fish-gencomplete
[travis-badge]: https://travis-ci.org/slavaGanzin/fish-gencomplete.svg?branch=master
[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
