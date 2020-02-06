Tested with Synopsys 2006.06 sp4, you may be able to use earlier
versions, but if you do make sure that you are using the "Presto"
compiler.

To load, The easiest way is to add the following lines into your compile
script (You need only load the packages you need):

    define_design_lib ieee_proposed -path ./ieee_proposed
    analyze -w ieee_proposed -f vhdl standard_additions_c.vhdl
    analyze -w ieee_proposed -f vhdl std_logic_1164_additions.vhdl
    analyze -w ieee_proposed -f vhdl numeric_std_additions.vhdl
    analyze -w ieee_proposed -f vhdl numeric_std_unsigned_c.vhdl
    analyze -w ieee_proposed -f vhdl math_utility_pkg.vhdl
    analyze -w ieee_proposed -f vhdl fixed_pkg_c.vhdl
    analyze -w ieee_proposed -f vhdl float_pkg_c.vhdl
    # analyze -w work -f vhdl float_synth.vhdl

Included in this [ZIP file](synopsys.zip) are the following packages
(only include the ones you need):

  - use ieee\_proposed.standard\_additions.all; -- Additions to packages
    standard.std
  - use ieee\_proposed.std\_logic\_1164\_additions.all; -- Additions to
    std\_logic\_1164
  - use ieee\_proposed.numeric\_std\_additions.all; -- Additions to
    numeric\_std
  - use ieee\_proposed.numeric\_std\_unsigned.all; -- Package to do
    unsigned math with std\_logic\_vectors, similar to the (sic)
    ieee.std\_logic\_unsigned package.
  - use ieee\_proposed.math\_utiliti\_pkg.all; -- Types for the fixed
    and float packages
  - use ieee\_proposed.fixed\_pkg.all; -- Fixed point package
  - use ieee\_proposed.float\_pkg.all; -- Floating point package

The "README" file in the ZIP file will give you a list of the new
functions.

See the README for an explination of the new functions in these
packages. You will also want to look at the [Fixed point
docuementation](http://www.vhdl.org/fphdl/Fixed_ug.pdf) and the
[Floating point docuementation](http://www.eda.org/fphdl/Float_ug.pdf).

Notes:

Synopsys doesn't accept the 1076.6 "-- rtl\_synthesis off" metacomment.
I placed "-- pragma synthesis\_off" metacomments around these.  

When Synopsys sees fixed\_pkg'instance\_name it dies on elaboration.
Replaced with "fixed\_pkg" (and "float\_pkg") where necessary.

Same problem with "integer'image" and "real'image" - commented out.

I had to replace the "match\_logic\_table" and "no\_match\_logic\_table"
with a logical equivilent. This was done in
"std\_logic\_1164\_additions" and in "fixed\_pkg\_c".
