--> # pantheon/paunify
--> CC+Pantheon compatibility layer
--> ## paunify-harbor-cc
--> Bootloader entrypoint for CC using harbor
import make_chroot from require "paunify.chroot"

--> Make our mountpoint if it isn't there already
unless fs.isDir "/pau/harbor-cc"
  fs.makeDir "/pau/harbor-cc"

root = make_chroot "/pau/cc-harbor"
if term.isColor!
  root "/rom/programs/advanced/multishell.lua"
else
  root "/rom/programs/shell.lua"
