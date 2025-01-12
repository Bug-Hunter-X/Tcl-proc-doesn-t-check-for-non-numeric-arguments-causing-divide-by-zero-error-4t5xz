# Tcl proc doesn't check for non-numeric arguments causing divide-by-zero error

This repository contains a demonstration of a subtle bug in Tcl procs related to error handling with non-numeric arguments. The `badproc` procedure demonstrates a scenario where a divide-by-zero error can occur silently if the arguments are not validated.

## Bug Description

The `badproc` procedure calculates `$b/$a`. If `$a` is 0, the procedure correctly throws an error. However, if `$a` is any other number, but `$b` is not a number, an error will not be thrown and the result will be incorrect.  This is a potential source of hard to debug errors as the result will be silently incorrect instead of throwing an error that helps in debugging.

## Solution

The `bugSolution.tcl` file shows a modified `badproc` with added error handling to check for non-numeric arguments and address potential divide-by-zero errors.