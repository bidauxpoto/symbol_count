# symbol_count

### Installation using conda:
```conda install -c molinerislab symbol_count```

### Description:
Symbol_Count is a power tool that provide the count (or frequency) of each symbol in a list given as input.

### Usage and options:
```
symbol_count [--reverse|-r] [--double|-d] [--normalize|-n] <SYMBOL

Options:
    -h, --help: print help message and exit
    -r, --reverse: print count before the symbol
    -d, --double: print the occurences (counts) of count values (same as: symbol_count | cut -f 2 | symbol_count)
    -n, --normalize: output fraction instead of count

SYMBOL: multi-row input file, each row is considered a symbol
```

______________________________

### Example:
symbol.tsv
```
chr1    154993586       154994315       protein_coding
chr1    154104521       154104592       ncRNA
chr1    201719508       201719627       ncRNA
chr1    211658657       211675630       protein_coding
chr2    229357629       229714555       protein_coding
chr5    37106228        37249376        protein_coding
chr5    15935182        15935260        ncRNA
chr7    31337465        31340726        protein_coding
chr7    101127104       101139247       protein_coding
chr18   57435374        57491298        protein_coding
chr18   72742314        72868146        protein_coding
chr19   36003307        36008813        protein_coding
chrX    74732856        74925472        protein_coding
chrX    147225826       147225952       ncRNA
chrX    147258760       147258850       ncRNA
chrX    50009722        50009805        ncRNA
```

The command ```cat symbol.tsv | cut -f 1,4 | symbol_count``` returns:
```
chr1    ncRNA   2
chr1    protein_coding  2
chr18   protein_coding  2
chr19   protein_coding  1
chr2    protein_coding  1
chr5    ncRNA   1
chr5    protein_coding  1
chr7    protein_coding  2
chrX    ncRNA   3
chrX    protein_coding  1
```

The command ```cat symbol.tsv | cut -f 1,4 | symbol_count -r -n``` returns:
```
1       5
2       4
3       1
```
(this because, as can be seen from the example above, 5 symbols have count=1, 2 symbols have count=4, 3 symbols have count=1)

The command ```cat symbol.tsv | cut -f 1,4 | symbol_count -r -n``` returns:
```
0.125   chr1    ncRNA
0.125   chr1    protein_coding
0.125   chr18   protein_coding
0.0625  chr19   protein_coding
0.0625  chr2    protein_coding
0.0625  chr5    ncRNA
0.0625  chr5    protein_coding
0.125   chr7    protein_coding
0.1875  chrX    ncRNA
0.0625  chrX    protein_coding
```
