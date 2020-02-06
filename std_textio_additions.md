[standard\_textio\_additions.vhdl](standard_textio_additions_c.vhdl) --
Additions to the package "std.textio"

Use model:  
**use ieee\_proposed.standard\_textio\_additions.all;**

Dependencies:  
**use std.textio;  
use ieee\_proposed.standard\_additions;**

  - tee - Echos the string to BOTH the file and the screen
  - SREAD and SWRITE - String read and write routines  
    (so you no longer need to do write (L, string'("ABCEDFG"));
  - HREAD and HWRITE (Hex read and write) for bit\_vector
  - OREAD and OWRITE (octal read and write) for bit\_vector
  - BREAD and BWRITE (binary read and write, same as "READ" and "WRITE"
    for bit\_vector
  - justify - Justify a string left or right with a width.  
    Example:  
    **justify ("ABCD", left, 6);** will result in "ABCD  "

Please send feedback to *David W. Bishop <dbishop@vhdl.org>*.
