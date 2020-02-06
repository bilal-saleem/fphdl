[numeric\_std\_additions](numeric_std_additions.vhdl) -- Additions to
the package "ieee.numeric\_std"

Use model:  
**use ieee.std\_logic\_1164.all;  
use ieee.numeric\_std.all;  
use ieee\_proposed.numeric\_std\_additions.all;**

Dependencies: ieee.std\_logic\_1164, ieee.numeric\_std

  - SIGNED or UNSIGNED + std\_ulogic operators
  - SIGNED or UNSIGNED - std\_ulogic operators
  - type UNRESOLVED\_UNSIGNED (aliased to U\_UNSIGNED) is an unresolved
    verion of UNSIGNED. It is aliased to "UNSIGNED" for compatability.
  - type UNRESOLVED\_SIGNED (aliased to U\_SIGNED) is an unresolved
    verion of SIGNED. It is aliased to "SIGNED" for compatability.
  - \\?=\\, \\?/=\\ - similar to "std\_match", but return std\_ulogic
    values. \\?\<\\, \\?\<=\\, \\?\>\\, \\?\>=\\ - compare functions
    which retrun std\_ulogic. (these will be "?="... operators in the
    release)
  - To\_X01, To\_X01Z, To\_U01X, Is\_X - same as std\_logic\_1164
    functions, but overloaded for SIGNED and UNSIGNED.
  - "sla" and "sra" - Mathmetically correct versions of these functions.
  - minimum and maximum - smaller or larger of two SIGNED or UNSIGNED
    values.
  - find\_leftmost and find\_rightmost - finds the first bit in a
    string.  
    Example:  
    **find\_leftmost (c12, '1'); -- returns the Log2 of "c12".** returns
    -1 if not found.
  - \_reduce functions (and\_reduce, nand\_reduce, or\_reduce ...) are
    defined These functions reduce a SIGNED or an UNSIGNED to a single
    bit. (will overload the "or" and "and", ... operators in the
    release)
  - SIGNED or UNSIGNED and "std\_ulogic" operations are defined. These
    will perform a boolean operation of a vector. Example: **"1" xor
    "1010" = "0101";**
  - READ and WRITE procedures for "SIGNED", and "UNSIGNED" are defined.
  - HREAD and HWRITE (Hex read and write) for SIGNED and UNSIGNED. These
    are more "forgiving" than the ones originally from
    "std\_logic\_textio"
  - OREAD and OWRITE (octal read and write) for "SIGNED" and "UNSIGNED.
    These are more "forgiving" than the ones originally from
    "std\_logic\_textio"
  - BREAD and BWRITE (binary read and write, same as "READ" and "WRITE"
    for SIGNED and UNSIGNED.
  - to\_string function - Converts a "SIGNED" or "UNSIGNED" types into a
    string. Example:  
    **assert (UNS = "101") report "result was " & to\_string(UNS)
    severity note;**
  - to\_hstring and to\_ostring function (SIGNED or UNSIGNED to hex or
    octal string)

Please send feedback to *David W. Bishop <dbishop@vhdl.org>*.
