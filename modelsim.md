Tested with Modeltech 6.2e

To compile: source the "compile.mti" script. This will create the
IEEE\_PROPOSED VHDL library. The ZIP file contains VHDL-93 compatable
versions of several of the new packages. Included in this [ZIP
file](modelsim.zip) are the following packages:

  - use ieee\_proposed.standard\_additions.all; -- Additions to packages
    standard.std
  - use ieee\_proposed.standard\_textio.all; -- Additions to packages
    standard.textio
  - use ieee\_proposed.env.all; -- New "env" package
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

See the README for an explination of the new functions in these
packages. You will also want to look at the [Fixed point
docuementation](http://www.vhdl.org/vhdl-200x/vhdl-200x-ft/packages/Fixed_ug.pdf)
and the [Floating point
docuementation](http://www.eda.org/vhdl-200x/vhdl-200x-ft/packages/Float_ug.pdf).

Notes: When you simulation, you may need to use the -novopt option.
Otherwise some of the alias won't get seen correctly.
