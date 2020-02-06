***VHDL-2008 Support Library***

These packages were designed as a bridge between VHDL-93 and VHDL-2008.
  I replicated as many of the new functions as possible.   Note that
all of these packages are design to be **synthesizable** in VHDL-93.  
So, as long as you stick to the subsets defined in the "README" files
for the various vendors you should be able to take your code through the
entire flow.

VHDL-2008 is finally getting some traction.   What started out as just a
fixed and floating point package got merged into the VHDL LRM.   On this
page you will find definitions of the functions available in the
VHDL-2008 libraries.   You will also find VHDL-93 compatible code for
those that do not yet have access to VHDL-2008 compilers.

There is a [Fixed Point user's
guide](http://www.supernova.thistlethwaites.com/fphdl/Fixed_ug.pdf) and
a [Floating Point user's
guide](http://www.supernova.thistlethwaites.com/fphdl/Float_ug.pdf).  
Please check the [Fixed and floating point
FAQ](http://www.supernova.thistlethwaites.com/fphdl/fpfaq.html) (NEW\!)
if you have any quesiton.

The VHDL-2008 packages will eventually be included in your vendor's
environment. In some cases I have found that they may be encrypted due
to [IEEE](http://ieee.org/) rules. The packages available on this page
are NOT the released packages, but VHDL-93 versions of those packages,
which I published BEFORE the release of the LRM. They are free of
copyright restrictions, and may be used for whatever purpose is needed.

VHDL-93 versions of the VHDL-2008 packages

  - Additions to std.standard
    [standard\_additions\_c.vhdl](http://www.supernova.thistlethwaites.com/fphdl/standard_additions_c.vhdl)
    ([user's
    guide](http://www.supernova.thistlethwaites.com/fphdl/standard_additions.html))
  - New package std.env
    [env\_c.vhdl](http://www.supernova.thistlethwaites.com/fphdl/env_c.vhdl)
  - Additions to std.textio
    [standard\_textio\_additions\_c.vhdl](http://www.supernova.thistlethwaites.com/fphdl/standard_textio_additions_c.vhdl)
    ([user's
    guide](http://www.supernova.thistlethwaites.com/fphdl/std_textio_additions.html))
  - Additions to ieee.std\_logic\_1164
    [std\_logic\_1164\_additions.vhdl](http://www.supernova.thistlethwaites.com/fphdl/std_logic_1164_additions.vhdl)
    ([user's
    guide](http://www.supernova.thistlethwaites.com/fphdl/std_logic_1164_additions.html))
  - Additions to ieee.numeric\_std
    [numeric\_std\_additions.vhdl](http://www.supernova.thistlethwaites.com/fphdl/numeric_std_additions.vhdl)
    ([user's
    guide](http://www.supernova.thistlethwaites.com/fphdl/numeric_std_additions.html))
  - New package numeric\_std\_unsigned
    [numeric\_std\_unsigned\_c.vhdl](http://www.supernova.thistlethwaites.com/fphdl/numeric_std_unsigned_c.vhdl)
    ([user's
    guide](http://www.supernova.thistlethwaites.com/fphdl/numeric_std_unsigned.html))
  - New package fixed\_float\_types
    [fixed\_float\_types\_c.vhdl](http://www.supernova.thistlethwaites.com/fphdl/fixed_float_types_c.vhdl)
  - New package fixed\_pkg
    [fixed\_pkg\_c.vhdl](http://www.supernova.thistlethwaites.com/fphdl/fixed_pkg_c.vhdl)
    ([Fixed Point user's
    guide](http://www.supernova.thistlethwaites.com/fphdl/Fixed_ug.pdf))
  - New package float\_pkg
    [float\_pkg\_c.vhdl](http://www.supernova.thistlethwaites.com/fphdl/float_pkg_c.vhdl)
    ([Floating Point user's
    guide](http://www.supernova.thistlethwaites.com/fphdl/Float_ug.pdf))
  - [ZIP file of all the
    packages](http://www.supernova.thistlethwaites.com/fphdl/vhdl2008c.zip)
    (updated 09/2010)

I use this code in most of my designs. Many times I find that I have to
modify the code slightly in some tools, so I made this list. Included in
the "source code" section for each tool is source code specifically
debugged for that particluar tool. Click on the "documentation" link to
see what changes I had to make, and how to use this code in the specific
tool.

| Vendor                                      | Zip file                                                                         | Notes                                                                               |
| ------------------------------------------- | -------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| [Altera](http://www.altera.com/)            | [Source code](http://www.supernova.thistlethwaites.com/fphdl/altera.zip)         | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/altera.html)         |
| [Cadence ncvhdl](http://www.cadence.com/)   | [Source code](http://www.supernova.thistlethwaites.com/fphdl/cadence_ncvhdl.zip) | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/cadence_ncvhdl.html) |
| [Cadence RC (new)](http://www.cadence.com/) | [Source code](http://www.supernova.thistlethwaites.com/fphdl/cadence_rc.zip)     | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/cadence_rc.html)     |
| [Modeltech](http://www.model.com/)          | [Source code](http://www.supernova.thistlethwaites.com/fphdl/modeltech.zip)      | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/modeltech.html)      |
| [Synopsys](http://www.synopsys.com/)        | [Source code](http://www.supernova.thistlethwaites.com/fphdl/synopsys.zip)       | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/synopsys.html)       |
| [Synplicity](http://www.synplicity.com/)    | [Source code](http://www.supernova.thistlethwaites.com/fphdl/synplicity.zip)     | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/synplicity.html)     |
| [Xilinx 11.1](http://www.xilinx.com/)       | [Source code](http://www.supernova.thistlethwaites.com/fphdl/xilinx_11.zip)      | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/xilinx_11.html)      |
| [Xilinx 9.1](http://www.xilinx.com/)        | [Source code](http://www.supernova.thistlethwaites.com/fphdl/xilinx.zip) (old)   | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/xilinx.html)         |
| [VCS](http://www.synopsys.com/)             | [Source code](http://www.supernova.thistlethwaites.com/fphdl/vcs.zip)            | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/vcs.html)            |
| [Spectrum 2009a](http://www.mentor.com/)    | [Source code](http://www.supernova.thistlethwaites.com/fphdl/leonardo.zip)       | [Documentation](http://www.supernova.thistlethwaites.com/fphdl/leonardo.html)       |
| Do do:[Aldec](http://www.aldec.com/)        |                                                                                  |                                                                                     |

  - [fixed\_noresize.vhdl](http://www.supernova.thistlethwaites.com/fphdl/fixed_noresize.vhdl)
    Similar to "fixed\_pkg", however this version uses the same rules
    that numeric\_std does for the size of the result. This is done by
    calling the funciton in "fixed\_pkg" and resizing the result.
  - [float\_noround\_pkg.vhdl](http://www.supernova.thistlethwaites.com/fphdl/float_noround_pkg.vhdl)
    Similar to "float\_pkg", however this version turns off all of the
    IEEE rounding and overflow, and defaults to a 26 bit floating point
    number. This package saves off 1/3 of the logic needed for full 32
    bit floating point.
  - [fixed\_synth.vhdl](http://www.supernova.thistlethwaites.com/fphdl/fixed_synth.vhdl)
    Synthesis testcase for the fixed point package.  
    [test\_fixed\_synth.vhdl](http://www.supernova.thistlethwaites.com/fphdl/test_fixed_synth.vhdl)
    Testbench for the fixed point synthesis testcase.
  - [float\_synth.vhdl](http://www.supernova.thistlethwaites.com/fphdl/float_synth.vhdl)
    Synthesis testcase for the floating point package.  
    [test\_float\_synth.vhdl](http://www.supernova.thistlethwaites.com/fphdl/test_float_synth.vhdl)
    testbench for the floating point synthesis package
  - [Testbenches](http://www.supernova.thistlethwaites.com/fphdl/vhdl2008test.zip)
    to verify an implimentation of VHDL-2008.
  - [Matrix Math package for type
    REAL](http://www.supernova.thistlethwaites.com/fphdl/real_matrix_pkg.zip)
    which has a [user
    guide](http://www.supernova.thistlethwaites.com/fphdl/real_matrix_ug.pdf)
    (Done in conjunction with [IEEE 1076.1
    VHDL-AMS](http://www.eda.org/twiki/bin/view.cgi/P10761/))

[Old version of this
page](http://www.supernova.thistlethwaites.com/fphdl/old_index.html)

Need some help with this code? Drop me an
[e-mail](mailto:dbishopx@gmail.com), maybe I can help.  
*David W. Bishop <dbishopx@gmail.com>*.   This web page is brought to
you by the [P1076 working
group](http://www.eda-twiki.org/cgi-bin/view.cgi/P1076/WebHome)
