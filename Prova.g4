grammar Prova;

expr: TOKEN+;

TOKEN: ('-' ID '-');
ID: (LETTER LETTER|DIGIT DIGIT|DIGIT LETTER|LETTER DIGIT)+;
fragment LETTER: 'A'..'Z';
fragment DIGIT: '0'..'9';

//ESCAPE SEQUENCES
WS              : (' '|'\t'|'\n'|'\r')-> skip;
LINECOMMENTS 	: '//' (~('\n'|'\r'))* -> skip;
BLOCKCOMMENTS    : '/*'( ~('/'|'*')|'/'~'*'|'*'~'/'|BLOCKCOMMENTS)* '*/' -> skip;