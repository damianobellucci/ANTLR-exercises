grammar esercizio2;

start:(BINDIGIT PIU DIGIT)+;
PIU:'+';
BINDIGIT:('0'|'1')+;
DIGIT:'0'..'9'+;
WS:(' '|'\t'|'\n'|'\r')->skip;
//4 Luglio 2019 esercizio 1
/*
casi 1+1 ed 1+2+3, studiarne il comportamento di questa grammatica.

1+1: 1 fa matching esatto con BINDIGIT ed è ok, + fa matching con PIU ed è ok,
il secondo 1 però fa matching con BINDIGIT, perché è la prima regola in ordine lista di regole
che può matchare l'1, ma ci si aspetta in realtà un matching con DIGIT e non BINDIGIT per costruire
il token, quindi input non viene rconosciuto.

1+2+3: 1+2 fa matching, mentre quando si arriva al + non può essere matchato con il token PIU in quanto
dopo un DIGIT ci possono essere solo altri DIGIT, oppure si conclude il token e si inizia con la costruzione
di un altro token.