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

    import bank7_code_move
    import famicom_controller
    import softlock_fix
    import music

    symtab = {}
    # Affects bank 0 and -1 (last bank).
    bank7_code_move.hack(edit, asm, config, symtab)
    # Enhancement to allow use of controllers on the Famicom expansion port.
    famicom_controller.hack(edit, asm, config, symtab)
    # Fix the screen-transition softlock bug.
    softlock_fix.hack(edit, asm, config, symtab)
    # Replaces bank 6, adds several 8KiB banks (28/29=bank 14, 26/27=bank13).
    music.hack(edit, asm, symtab,
               # The IRQ routines need 100 free bytes in bank -1, however
               # without additional hacks, we don't have 100 contiguous bytes
               # free in bank -1.
               irq_drives_scroll=True)

    # Now tell the editor about the new configuration.
    name = meta['config'].replace('chr_expansion-mmc5', 'mmc5')
    Config.put(name, config)
    # Now tell the project about the new configuration.
    meta['extra'] = {'next_config': name}
    edit.meta = meta

except Exception as e:
    traceback.print_exc()
    raise e
