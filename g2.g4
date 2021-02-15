grammar g2;

expr: TOKEN+;

TOKEN: ('a'UNO|'b'TRE);
UNO: ('a'UNO|'b'DUE|);
DUE:('a'UNO|);
TRE:('a'UNO|);
WS:(' '|'\t'|'\n'|'\r')->skip;