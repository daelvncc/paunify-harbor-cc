local make_chroot
make_chroot = require("paunify.chroot").make_chroot
if not (fs.isDir("/pau/harbor-cc")) then
  fs.makeDir("/pau/harbor-cc")
end
local root = make_chroot("/pau/cc-harbor")
if term.isColor() then
  return root("/rom/programs/advanced/multishell.lua")
else
  return root("/rom/programs/shell.lua")
end
