# MATLAB Implicit Expansion Bug

This repository demonstrates an uncommon bug in MATLAB related to implicit expansion.  The bug arises when performing element-wise operations (like `.*`, `./`, `.^`) with arrays of incompatible dimensions.  MATLAB's implicit expansion attempts to resolve the size mismatch, but this can lead to unexpected and incorrect results if not handled carefully.

The `bug.m` file shows the buggy code. The `bugSolution.m` file provides a corrected version.

## Bug Description

The bug occurs due to MATLAB's implicit expansion, which automatically expands smaller arrays to match the dimensions of larger arrays during element-wise operations. While convenient, this can produce errors if the expansion isn't what you intend. In the example, we multiply a 3x1 and a 1x3 array. The implicit expansion leads to unexpected results rather than producing an error like it would in other languages. 

## Solution

The solution involves explicitly ensuring the arrays have compatible dimensions before performing the element-wise operations. This can be done using reshaping, transposing, or other dimension-adjusting functions as needed.  The `bugSolution.m` file demonstrates the correct approach.