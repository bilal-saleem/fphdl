***Fixed and Floating point support page***

The floating point packages were designed to be 100%
[IEEE 754](http://grouper.ieee.org/groups/754/) compatible.   For
synthesis, this just isn't practical.   I recommend that you that you go
into the top of "float\_pkg" and change the constants as follows:

``` 
    constant float_exponent_width : NATURAL    := 8;
    constant float_fraction_width : NATURAL    := 15;  -- 16 bits of precision
    constant float_round_style    : round_type := round_zero; -- disable rounding
    constant float_denormalize    : BOOLEAN    := false; -- no denormal numbers
    constant float_check_error    : BOOLEAN    := false; -- NO NAN and overflow checks
    constant float_guard_bits     : NATURAL    := 0; -- no guard bits
In your source code, you should use this type:
  begin
    signal float1 : float (float_exponent_width downto -float_fraction_width);
```

If you are an EDA vendor, and would like to test your tool against these
packages, please download the "[modeltech.zip](modeltech.zip)" (which
has the fewest changes in it) and try it aginst your syntheis/simulation
tool. If you have any issues please drop me an e-mail.

The NEXT step is a Verilog package. Interested?

Questions or comments? Please e-mail me. dbishop"at"vhdl.org
