grammar g3;

expr: TOKEN+;

TOKEN:'-'ZERO;
ZERO:(LETTER|DIGIT)UNO;
UNO:(LETTER|DIGIT)DUE;
DUE:((LETTER|DIGIT)UNO)|'-';
LETTER: 'A'..'Z';
DIGIT:'0'..'9';
WS:(' '|'\t'|'\n'|'\r')->skip;