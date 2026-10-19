# probability-selector

A Max/MSP JavaScript probability-selection object with two inlets and one outlet.

## Files

- `probability-selector.js` — the JavaScript object
- `probability-selector.maxhelp` — an interactive Max help patch

## Installation

Keep `probability-selector.js` in the same folder as your Max patch, or place it in a folder included in Max's File Preferences search path.

Create the object without an argument:

```max
[js probability-selector.js]
```

Or provide one optional positive-integer argument that establishes the expected number of weights:

```max
[js probability-selector.js 3]
```

## Inlets and outlet

### Left inlet

The left inlet accepts:

- A numeric list containing exactly the expected number of weights
- `bang`, which performs one probability selection

Integers, floats, or mixed integer/float lists are accepted.

### Right inlet

The right inlet accepts one positive integer. This integer establishes how many weights the next valid list at the left inlet must contain.

Changing the expected count clears the previous probability distribution. A new valid list must then be loaded before `bang` can produce an output.

### Outlet

The outlet reports the selected **1-based index**.

The first list position is index `1`, the second is index `2`, and so forth.

## Probability normalization

The input weights do **not** need to sum to `1.0` or `100`.

The object adds all weights and divides each weight by the total:

```text
normalized weight = input weight / sum of all input weights
```

Examples:

```text
2 3 5
```

becomes:

```text
0.2 0.3 0.5
```

and:

```text
50 50
```

becomes:

```text
0.5 0.5
```

A list such as:

```text
10 20 70
```

assigns:

- index 1: 10% probability
- index 2: 20% probability
- index 3: 70% probability

## Basic example

1. Send `2` to the right inlet.
2. Send `50 50` to the left inlet.
3. Send `bang` to the left inlet.

The outlet reports either `1` or `2`, each with probability `0.5`.

The same setup can be initialized with:

```max
[js probability-selector.js 2]
```

In that case, the right-inlet message is unnecessary unless the expected list length later changes.

## Validation and errors

The object posts a descriptive error to the Max Console when:

- No expected list length has been established
- The left-inlet list contains too few or too many values
- The right inlet receives something other than one positive integer
- A probability weight is negative
- All weights sum to zero
- `bang` arrives before a valid probability list is loaded

Invalid input does not create a new distribution.

## Notes

- Zero is permitted as an individual weight, provided at least one other weight is greater than zero.
- Duplicate weights are permitted.
- The probability table is cumulative internally, and its final boundary is forced to exactly `1.0` to avoid floating-point boundary errors.
