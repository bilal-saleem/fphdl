[numeric\_std\_unsigned.vhdl](numeric_std_unsigned_c.vhdl) This package
is a "standardized" verion of "std\_logic\_unsigned" which appears in
many vendor tools.

Use model:  
**use ieee.std\_logic\_1164.all;  
use ieee.numeric\_std.all;  
use ieee\_proposed.numeric\_std\_additions.all;** use
ieee\_proposed.numeric\_std\_unsigned.all;

VHDL-2008 use model:  
**use ieee.numeric\_std\_unsigned.all;**

Dependencies: ieee.std\_logic\_1164, ieee.numeric\_std

This package treats "std\_logic\_vector" and "std\_ulogic\_vector" just
like the "unsigned" type in ieee.numeric\_std. It has all of the
funcitionality of the old "std\_logic\_unsigned" package with the
ability to use "std\_ulogic\_vector".

Please send feedback to *David W. Bishop <dbishop@vhdl.org>*.
