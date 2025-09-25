python
import os
import gdb
port = os.getenv("GDB_PORT", "8864")
gdb.write(f"Connecting to GDB stub at :{port}\n")
gdb.execute(f"target remote :{port}")
end 
define load-symbol
  if $argc != 1
	echo "load-symbol <efi full path>\n"
  else
    source ./load-symbols.py
    file
    load-symbols $rip $arg0
    stepi
end
set disassembly-flavor intel
