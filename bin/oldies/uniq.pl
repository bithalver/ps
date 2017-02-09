#!/usr/bin/perl

# The script is for *.out.ps files.
# It deletes the duplicate lines in the same page
# Side effect: it sorts the (inner) contents of a page
# (c) Bithalver  v1.0 20001021

use IO::Handle;

STDOUT->autoflush(1);
while (<>) {
  if (/^%%Page/) {
    print $_;
    $A=<>;print $A; # The "gsave" line
    $A=<>;print $A; # The "... translate" line
    open(FH,"|sort|uniq");FH->autoflush(1);
    while (<>) { if (/showpage/) {close(FH);last} print FH $_; }
  }
  print $_
}
