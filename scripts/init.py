# Add the project scripts directory into python's import machinery.
import importlib
import site
import sys
import traceback
from z2edit.util import Config, check_version_or_die

check_version_or_die('1.99.4')

path = edit.path('scripts')
site.addsitedir(path)

# Support fast iterative development by allowing all the local site modules
# to be reloaded.
modules = list(sys.modules.values())
for m in modules:
    file = getattr(m, '__file__', '')
    if file and path in file:
        importlib.reload(m)

try:
    meta = edit.meta
    config = Config.get(meta['config'])

    import music

    symtab = {}
    music.hack(edit, asm, symtab, irq_drives_scroll=False)

    # Now tell the editor about the new configuration.
    name = meta['config'].replace('chr_expansion-mmc5', 'mmc5')
    Config.put(name, config)
    # Now tell the project about the new configuration.
    meta['extra'] = {'next_config': name}
    edit.meta = meta

except Exception as e:
    traceback.print_exc()
    raise e