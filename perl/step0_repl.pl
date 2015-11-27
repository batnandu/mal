#!/usr/bin/perl

use strict;
use warnings;

#========================================================================
# Add the 4 trivial functions READ, EVAL, PRINT, and rep
# (read-eval-print). READ, EVAL, and PRINT are basically just stubs
# that return their first parameter (a string if your target language
# is a statically typed) and rep calls them in order passing the
# return to the input of the next.
#========================================================================

sub READ  { $_[0] }
sub EVAL  { $_[0] }
sub PRINT { $_[0] }
sub rep   { PRINT(EVAL(READ($_[0]))) }

#========================================================================
# Add a main loop that repeatedly prints a prompt (needs to be "user> "
# for later tests to pass), gets a line of input from the user,
# calls rep with that line of input, and then prints out the result
# from rep. It should also exit when you send it an EOF (often
# Ctrl-D).
#========================================================================

print "user> ";
while (<>) {
    print rep($_);
    print "user> ";
}


# If you are using a compiled (ahead-of-time rather than just-in-time)
# language, then create a Makefile (or appropriate project definition
# file) in your directory.
#
# Run your new program and make sure that it echos each line that you
# type. Because step0 is so trivial, there are no automated tests to
# run for it.
#
# Add and then commit your new step0_repl.qx and Makefile to git.
#
# Congratulations! You have just completed the first step of the
# make-a-lisp process.
#========================================================================
