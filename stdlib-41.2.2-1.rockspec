local _MODREV, _SPECREV = '41.2.2', '-1'

package = 'stdlib'
version = _MODREV .. _SPECREV

description = {
   summary = 'General Lua Libraries',
   detailed = [[
      stdlib is a library of modules for common programming tasks,
      including list, table and functional operations, objects, pickling,
       pretty-printing and command-line option parsing.
   ]],
   homepage = 'http://lua-stdlib.github.io/lua-stdlib',
   license = 'MIT/X11',
}

source = {
   url = 'http://github.com/lua-stdlib/lua-stdlib/archive/v' .. _MODREV .. '.zip',
   dir = 'lua-stdlib-' .. _MODREV,
}

dependencies = {
   'lua >= 5.1, < 5.5',
}

build = {
   type = 'builtin',
   modules = {
      std                = 'lib/std.lua',
      ['std.base']       = 'lib/std/base.lua',
      ['std.container']  = 'lib/std/container.lua',
      ['std.debug']      = 'lib/std/debug.lua',
      ['std.debug_init'] = 'lib/std/debug_init/init.lua',
      ['std.functional'] = 'lib/std/functional.lua',
      ['std.io']         = 'lib/std/io.lua',
      ['std.list']       = 'lib/std/list.lua',
      ['std.math']       = 'lib/std/math.lua',
      ['std.object']     = 'lib/std/object.lua',
      ['std.operator']   = 'lib/std/operator.lua',
      ['std.optparse']   = 'lib/std/optparse.lua',
      ['std.package']    = 'lib/std/package.lua',
      ['std.set']        = 'lib/std/set.lua',
      ['std.strbuf']     = 'lib/std/strbuf.lua',
      ['std.strict']     = 'lib/std/strict.lua',
      ['std.string']     = 'lib/std/string.lua',
      ['std.table']      = 'lib/std/table.lua',
      ['std.tree']       = 'lib/std/tree.lua',
   },
}

if _MODREV == 'git' then
   build.copy_directories = nil

   source = {
      url = 'git://github.com/lua-stdlib/lua-stdlib.git',
   }
end
