[standard\_additions](standard_additions_c.vhdl) -- Additions to the
package "std.standard"

Use model:  
**use ieee\_proposed.standard\_additions.all;**  
Dependancies: None.

Notes: The functions "rising\_edge" and "falling\_edge" are defined in
this package. If you use "numeric\_bit" they are ALSO defined in that
package, causing a conflict. The VHDL-200X-FT version of numeric\_bit
has these functions commented out, as well as the "sll", "srl", "ror"
and "rol" functions which are implicit.

  - REAL\_VECTOR - A vector of type real
  - TIME\_VECTOR - A vector of type time
  - INTEGER\_VECTOR - A vector of type integer
  - BOOLEAN\_VECTOR - a vector of type boolean

<!-- end list -->

  - SIM\_RESOLUTION : TIME - returns the simulator's resolution (1 ns
    default)

<!-- end list -->

  - "maximum" and "minimum" are defined for all default datatypes
  - \_reduce functions (and\_reduce, nand\_reduce, or\_reduce ...) are
    defined These functions reduce a bit\_vector to a single bit.  
    Example:  
    **or\_reduce ("0101") = '1'**  
    In VHDL-2008 syntax these will be "or".
  - "vector" and "bit" operations are defined. These will perform a
    boolean operation of a vector.  
    Example:  
    **"1" xor "1010" = "0101";**
  - /??/ function is defined for "bit" ("??" operator is release) **if
    (/??/('1')) then -- will return a "true".**
  - rising\_edge and falling\_edge functions are defined (see Notes).
  - to\_string function - Converts any of the base types into a
    string.  
    Example:  
    **assert (bv = "101") report "result was " & to\_string(bv) severity
    note;**
  - to\_hstring and to\_ostring function (bit\_vector to hex or octal
    string)

Please send feedback to *David W. Bishop <dbishop@vhdl.org>*.
