***Fixed and Floating point VHDL FAQ***

What follows are frequently asked questions about the fixed and floating
point VHDL packages.   VHDL-93 source code can be found on the
[VHDL-2008 support library page](http://vhdl.org/fphdl/index.html).  
You will find these packages built into several implimentations of VHDL.
 

#### What synthesis results can I expect?

Under the hood, all of the fixed and floating point functions call
functions from the "numeric\_std" package.   Much work was done to make
sure that these algorithms would be as fast as possible.   You can
expect a fixed point multiply to be just as fast as an UNSIGNED
multiply.   Floating point gives you about 3X overhead.   However you
get much more accurate results.   My best results have been gotten by
mixing the two.

#### Where are the shift operators?

You don't need them. Use the "scalb" function. This function works as
follows:

    variable uf1 : ufixed (5 downto 0);
    variable uf2 : ufixed (4 downto -1);
    ...
    uf2 := scalb (uf1, -1);  -- shift right by 1

The nice thing about this function is that you don't loose any data.  
Note that under the hood, for some synthesis tools, this function is
implimented with shift operators. Standard shift operators are built
into VHDL-2008, but some vendors have not implemented them.

#### Why can't I say "X \<= '0' & Y;" to tack a '0' in front of (or behind) a vector?

The problem here is that the vector returned will be "ufixed
(integer'low to integer'low+Y'high)" or essentially 2\*\*-32,000 (a VERY
small number).   Instead, use the resize function:

    X <= resize (Y, X'high, X'low);

The resize function is used to all of the rouding in the fixed point
package.

#### These sizing rules are a pain.   Why can't these packages work more like numeric\_std?

The sizing was done so that you never need to round, thus removing one
addition stage, and making the results run faster.   For the
applications where this is just a pain, I've created
[fixed\_noresize.vhdl](fixed_noresize.vhdl).   This package creates the
types "fixedu" and "fixeds" (which are similar to "ufixed" and
"sfixed"). However these new types have the same sizing rules as
numeric\_std UNSIGNED and SIGNED.

Note that there is also an "add\_carry" procedure in the [fixed point
package](Fixed_ug.pdf) for fixed point accumulators, which can be used
like this:

    variable uf3: ufixed (3 downto -2);
    constant one : ufixed (0 downto 0) := "1";
    ...
    add_carry (
      L => uf3,
      R => one,
      result => uf3,
      c_in => '0',
      c_out => open);

This procedure will return a result which is the "widest" of the inputs.
  Overflow will show up in the "c\_out" output.

#### My floating point divider (or other function) is slow, what can I do about it?

Yes, it will be, a floating point divider is lots of logic.   You will
need to pipeline these functions.   Some synthsis tools will do this for
you automatically.   Others will make you pipline them manually.   I
have already created pipelined versions of many of them.

#### How do you convert unsigned fixed point (ufixed) into signed fixed point (sfixed)?

There is a function "to\_sfixed(ufixed)" which increases the size of the
output by 1 (the sign bit).   The "to\_ufixed(sfixed)" function returns
a vector of the same size as the input.  

#### What happened to the "math\_utility\_pkg" package?

It got replaced with the [fixed\_float\_types
package](fixed_float_types_c.vhdl) during the final edits of the
VHDL-2008 LRM.   Some older implimentations of these packages (like the
ones built into the floatfixlib library in version 6.\* of Modeltech)
still use it.   The types in these two packages are identical.

#### Why does the "break\_number" return an incorrect result?

This has to do with how the floating point number is encoded. The
exponent is biased by -1. Thus if you take every result and multiply it
by 2 you will get the correct answer. The "break\_number" routine was
designed to be a synthesis pass through, creating no logic. It is up to
the next function to fix the bias.

#### What bugs have been found?

So far:

  - The **add\_carry** for both the "sfixed" and "ufixed" types has a
    bug in the "c\_out" output. "c\_out" will be incorrect because of
    this bug. This function is fixed in the [latest
    version](fixed_pkg_c.vhdl)
  - The **to\_float (sfixed)** function will return the wrong result if
    the "sfixed" value is the largest possible negative number
    ("100000").   That function is fixed in the [latest
    version](float_pkg_c.vhdl).
  - The **to\_float (ufixed)** funciton will return the wrong result if
    the decimal width of the number is larger than can be held in the
    exponent of the result.   This is only a problem with denormal
    numbers.   That function is fixed in the [latest
    version](float_pkg_c.vhdl).
  - The documented sizing rules for the fixed point **reciprocal**
    function in the VHDL-2008 LRM is wrong.   It is corrected in [Fixed
    point users guide](Fixed_ug.pdf)

Need some help with this code? Drop me an
[e-mail](mailto:dbishop@vhdl.org), maybe I can help.  
**My company will also allow me to consult for you.**  

This web page is brought to you by the [EDA Industry Working
Groups](http://eda.org) and [Accellera](http://www.accellera.org/home).
