# Cadence ncvhdl

Tested with ncvhdl 08.20-s004.

To compile: You will need to setup your cds.lib and hdl.var files, then
create an "ieee\_proposed" and "worklib" directory. Then you can just
run compile.ncvhdl.

See the README for an explination of the new functions in these
packages.

Notes: ncvhdl is stricter on syntax then Modeltech. It actually found a
few minor things that I missed. The only error I found was in the
"env\_c.vhdl" file. It didn't like the 10 hr and 100 hr time
resolutions.

-----

Last modified: Thu Aug 27 10:02:29 EDT 2009
