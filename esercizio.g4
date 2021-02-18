grammar esercizio;
expr:TOKEN+;
TOKEN:'a'*'b'*'c'*;
WS:(' '|'\t'|'\r'|'\n')->skip;
//19 Settembre 2019, esercizio 1
//test: a abbc bcc
//risultato test: deve generare tre token: "a","abbc" ed "bcc"