# symbol_count

### Installation using conda:
```conda install -c molinerislab symbol_count```

### Description:
Symbol_Count is a power tool that provide the count (or frequency) of each symbol in a list given as input.

### Usage and options:
```
symbol_count [--reverse|-r] [--double|-d] [--normalize|-n] <SYMBOL

    --help|-h: help message
    --reverse|-r: print count before the symbol
    --double|-d: (same as:
                  symbol_count | cut -f 2 | symbol_count)
    --normalize|-n: output fraction instead of count

SYMBOL: multi-row input file, each row is considered a symbol
```

______________________________

### Example:
