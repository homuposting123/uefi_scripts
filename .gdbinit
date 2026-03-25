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
