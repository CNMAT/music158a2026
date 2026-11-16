proportional_series.js bundle for Max
====================================

Files:
  proportional_series.js       Max js object
  proportional_series.maxhelp  Help patch for the js object
  README.txt                   This file

Install/use:
  1. Put the whole folder somewhere in Max's search path, or keep the .js and .maxhelp in the same folder.
  2. In Max, create this object:
       [js proportional_series.js]
  3. Send messages into the object.

Version 7 update:
  The direct lookup messages now accept either one index or a list of indices:
       fib 18
       fib 0 1 2 3 4 5 10 18
       prime 18
       prime 1 2 3 4 5 10 18 1200

Fibonacci direct lookup:
  fib n...
  fibonacci n...
  nth n...

This outputs Fibonacci value(s) at zero-based position(s).
With the default seed 0 1:
  fib 18                      -> 2584
  fib 0 1 2 3 4 5 10 18       -> 0 1 1 2 3 5 55 2584

Fibonacci list output:
  fiblist n

This outputs the first n Fibonacci values, using zero-based positions 0 through n-1.
Example:
  fiblist 12                  -> 0 1 1 2 3 5 8 13 21 34 55 89

Range syntax:
  fiblist start-end

Example:
  fiblist 33-40               -> 3524578 5702887 9227465 14930352 24157817 39088169 63245986 102334155

Stepped / every-nth range syntax:
  fiblist start-end step
  fiblist_nth start-end step
  fiblist_nth start end step

Example:
  fiblist 10-50 10            -> 55 6765 832040 102334155 12586269025

Prime direct lookup:
  prime n...

This outputs prime value(s) using one-based prime numbering.
The embedded prime table contains the first 1200 primes.
Examples:
  prime 18                    -> 61
  prime 1 2 3 4 5 10 18 1200  -> 2 3 5 7 11 29 61 9733
  prime 1200                  -> 9733

Prime list output:
  primelist n

This outputs the first n prime numbers as one Max list.
Example:
  primelist 20                -> 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71

Range syntax:
  primelist start-end

Example:
  primelist 20-30             -> 71 73 79 83 89 97 101 103 107 109 113

Stepped / every-nth range syntax:
  primelist start-end step
  primelist_nth start-end step
  primelist_nth start end step

Example:
  primelist 10-200 10         -> 29 71 113 173 229 281 349 409 463 541 601 659 733 809 863 941 1013 1069 1151 1223

Index lookup by sequence value:
  prime_index value-or-values
  fib_index value-or-values

These output index numbers for the given sequence values.

Prime index lookup is one-based:
  prime_index 2               -> 1
  prime_index 2 3 5 7 11      -> 1 2 3 4 5
  prime_index 61              -> 18

Fibonacci index lookup is zero-based and uses the current Fibonacci seed:
  fib_index 2584              -> 18
  fib_index 0 1 1 2 3 5       -> 0 1 1 3 4 5

Important Fibonacci duplicate note:
  The value 1 occurs at positions 1 and 2 in the default Fibonacci sequence.
  fib_index returns the first matching index, so fib_index 1 outputs 1.

If a value is not found, the object outputs -1 for that item and reports a status message from outlet 1.

Slice / even-distribution output:
  prime_slice start-end slots
  prime_slice start end slots
  fib_slice start-end slots
  fib_slice start end slots

This outputs a fixed number of values distributed as evenly as possible across
the requested index range. The first returned value always comes from the start
index. When slots is greater than 1, the final returned value comes from the end
index.

Algorithm:
  index = round(start + i * (end - start) / (slots - 1))

where i runs from 0 through slots - 1.

Prime slice example:
  prime_slice 100-200 6       -> 541 659 809 941 1069 1223
  indices used: 100 120 140 160 180 200

Fibonacci slice example:
  fib_slice 10-50 6           -> 55 2584 121393 5702887 267914296 12586269025
  indices used: 10 18 26 34 42 50

Stream / status messages:
  series fib       sets the bang/next stream to Fibonacci and reports: reset fibonacci
  series prime     sets the bang/next stream to prime numbers and reports: reset prime
  bang             outputs current stream value and advances one step
  next 8           after reset in Fibonacci mode outputs: 0 1 1 2 3 5 8 13
  next 8           after reset in prime mode outputs: 2 3 5 7 11 13 17 19
  reset            resets stream to current series start and reports: reset fibonacci or reset prime
  position 10      in Fibonacci mode reports: position 10 value 55
  position 9       in prime mode reports: position 9 value 29
  seed 1 1         changes Fibonacci seeds and reports: fibonacci seed 1 1
  info             example after default reset: series fibonacci position 0 current 0 prime_range 1-1200 fibonacci_seed 0 1

Outlets:
  outlet 0: generated values/lists
  outlet 1: status messages

Indexing note:
  Fibonacci uses zero-based indexing in this object because fib 18 was specified
  as the value at placeholder/index 18.
  Prime numbers use one-based indexing because prime 1 conventionally means
  the first prime, which is 2.

Precision note:
  Fibonacci uses JavaScript Number arithmetic. Conventional Fibonacci values
  are exactly reliable up to about F(78). After that, values may be approximate
  floating-point numbers inside Max's js object.
