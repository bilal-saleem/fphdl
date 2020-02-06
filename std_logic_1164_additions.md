[std\_logic\_1164\_additions.vhdl](std_logic_1164_additions.vhdl) --
Additions to the package "ieee.std\_logic\_1164". This package now
includes what used to be in "std\_logic\_textio", so it must be
commented out. Otherwise it will conflict with the new functions (which
are much more forgiving).

Usage model:  
**use ieee.std\_logic\_1164.all;  
\-- use ieee.std\_logic\_textio.all; -- Comment out, included in
"\_additions".  
use ieee\_proposed.std\_logic\_1164\_additions.all;**

Dependencies: ieee.std\_logic\_1164;

Note: The contents of the "std\_logic\_textio" package have now been
included in the "std\_logic\_1164" package, and an EMPTY
"std\_logic\_textio" package is provided in the new release.

  - Short had aliases:
      - to\_bv - calls "to\_BitVector"
      - to\_slv - calls "to\_StdLogicVector"
      - to\_sulv - calls "to\_stdULogicVector"
  - Long hand aliases:
      - to\_bit\_vector - calls "to\_BitVector"
      - to\_std\_logic\_vector - calls "to\_StdLogicVector"
      - to\_std\_ulogic\_vector - calls "to\_StdULogicVector"
  - \_reduce functions (and\_reduce, nand\_reduce, or\_reduce ...) are
    defined These functions reduce a std\_logic\_vector (or ulogic) to a
    single bit. In vhdl-2008 these will be unary "or", example "or
    "11011" = '1'"
  - "vector" and "std\_ulogic" operations are defined. These will
    perform a boolean operation of a vector.  
    Example:  
    **"1" xor "1010" = "0101";**
  - "\\??\\" function is defined for "std\_ulogic" ("??" operator is
    release) **if (\\??\\('1')) then -- will return a "true"**
  - READ and WRITE procedures for "std\_logic\_vector",
    "std\_ulogic\_vector" and "std\_ulogic" are defined.
  - HREAD and HWRITE (Hex read and write) for std\_logic\_vector and
    std\_ulogic\_vector. These are more "forgiving" than the ones
    originally from "std\_logic\_textio"
  - OREAD and OWRITE (octal read and write) for std\_logic\_vector and
    std\_ulogic\_vector. These are more "forgiving" than the ones
    originally from "std\_logic\_textio"
  - BREAD and BWRITE (binary read and write, same as "READ" and "WRITE"
    for std\_logic\_vector and std\_ulogic\_vector.
  - to\_string function - Converts a "std\_ulogic", "std\_logic\_vector"
    or "std\_ulogic\_vector" types into a string.  
    Example:  
    **assert (slv = "101") report "result was " & to\_string(slv)
    severity note;**
  - to\_hstring and to\_ostring function (std\_(u)logic\_vector to hex
    or octal string)

Please send feedback to *David W. Bishop <dbishop@vhdl.org>*.
