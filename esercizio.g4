grammar esercizio;
expr:TOKEN+;
TOKEN:'a'*'b'*'c'*;
WS:(' '|'\t'|'\r'|'\n')->skip;
//test: a abbc bcc
//risultato test: deve generare tre token: "a","abbc" ed "bcc"