# Variabili Aleatorie

La variabile aleatoria è una funzione, ed il suo **insieme di definizione** è un **evento**. La variabile produce un numero reale in corrispondenza del risultato di un evento.

### Esempio

Supponiamo di lanciare 2 monete in sequenza; le possibili uscite sperimentali saranno:

![](https://tva1.sinaimg.cn/large/008vxvgGgy1h9ap8j5zpej30sz0rsabk.jpg)

`Ovvero: Ω={(T,T), (TC), (C,T), (C,C)}`

Consideriamo ora gli eventi elementari del tipo: ω={(T,T)} oppure ω={(T,C)} ecc.
Andiamo a costruire una funzione che al **risultato** di un evento, **ci restituisce un valore numerico**:

- x({T,T}) = 1
- x({T,C}) = 2
- x({C,T}) = 3
- x({C,C}) = 4

Inoltre: x(ω) ∈ **R**, Ovvero il codiminio appartiene ai reali.

Graficamente otteniamo:

![](https://tva1.sinaimg.cn/large/008vxvgGgy1h9ap5u01ajj31b20rrtbo.jpg)

- Ad ogni uscita sperimentale associamo un numero reale.
- Due o più uscite sperimentali possono associare lo stesso numero reale.

## A cosa serve la variabile aleatoria?

Le variabili aleatorie ci permettono di "saltare" la definizione di tutte quelle componenti preliminari come lo spazio campione, e di definire **direttamente** la variabile aleatoria.

## Variabile aleatoria Indicatore Di un Evento

I<sub>E</sub> = **Variabile indicatrice dell'evento E**

Questa variabile viene definita nel seguente modo: 

- I<sub>E</sub> = 1 quando l'evento E si verifica
- I<sub>E</sub> = 0 quando l'evento E non si verifica

Sulla base di questa definizione, definiamo una serie di **funzioni standard**, ovvero funzioni reali di una variabile reale:

### Funzione di distribuzione cumulativa

Una prima funzione prende il nome di **funzione di distribuzione comulativa** (**CDF**):

F<sub>X</sub> (x) = P({X **≤** x})

- Dove "X" è il nome della **variabile aleatoria**
- Dove "(x)" è la variabile **indipendente** della funzione
- Dove "{X **≤** x}" è l'evento e P è la probabilità
  - X è la variabile aleatoria
  - x è un valore corrente variabile

#### Esempio - Lancio della moneta:

La prima cosa da fare è costruire la variabile aleatoria, in maniera tale che:

- X({T}) = 1
- X({C}) = 0

Costruiamo quindi il grafico della funzione F<sub>X</sub>(x) in relazione alla variabile indipendente x; per farlo ci basta vedere che valore assume F<sub>X</sub> quando varia x:

1) Prendiamo un valore: ad esempio "-1". 
2) Ci chiediamo: "qual è la probabilità che x sia **Minore o Uguale** a -1?" --> "Ci sono uscite sperimentali di X che ci danno un valore più piccolo di -1?" **Risposta: NO**.

![image-20221221151428920](https://tva1.sinaimg.cn/large/008vxvgGgy1h9bshl3vkhj311o0rsdhl.jpg)

Questo vuol dire che l'evento {x **≤** -1} è un insieme vuoto! Abbiamo infatti:

- `{x ≤ -1} = ∅`	--> L'insieme è vuoto
- `P{x ≤ -1} = 0`   --> La probabilità è nulla

Possiamo muoverci sull'asse delle "x" (variabile indipendente), ma abbiamo la certezza che **non esistono valori più piccoli di meno uno**, ma non ce ne sono nemmeno di più grandi fino ad 1. Sappiamo quindi che la probabilità sarà zero *almeno* fino allo zero **escluso**:

![image-20221221152311768](https://tva1.sinaimg.cn/large/008vxvgGgy1h9bsqo531dj31500rsdhj.jpg)

Adesso ci chiediamo nuovamente (siamo ad x = 0): "quando accade l'evento in cui x ≤ 0?" --> accade nel momento in cui ho croce. Infatti, stando a come abbiamo definito la nostra variabile aleatoria, quando otteniamo "croce", X vale proprio zero!

Siccome siamo nell'ipotesi in cui ogni uscita è **equiprobabile**, abbiamo che per ogni uscita la probabilità è di 1/2; di conseguenza, la probabilità che Z sia minore o uguale a zero, **coincide con la probabilità che X sia uguale a zero**, ovvero proprio 1/2!

![image-20221221152907744](https://tva1.sinaimg.cn/large/008vxvgGgy1h9bsx07afjj30wo0rs402.jpg)

A questo punto continuiamo come abbiamo fatto finora: prendiamo un nuovo punto, ad esempio "0.4".

Calcoliamo quindi la probabilità che X sia minore a 0.4: P({X ≤ 0.4}) = ? L'unico caso in cui X è minore di 0.4 è proprio quando essa vale zero, ovvero quando esce "croce", e visto che la probabilità coincide alla probabilità dell'uscita sperimentale, abbiamo che P({X ≤ 0.4}) = 0.

![image-20221221153333862](https://tva1.sinaimg.cn/large/008vxvgGgy1h9bt1h6ls9j320s0rs77k.jpg)

Osserviamo che il grafico rimane **costante** fino a quando non arriviamo ad x = 1; in questo caso ci chiediamo nuovamente: "quando X è minore o uguale ad 1?" In questo caso ci sono ben 2 casi: ovvero sia quando esce testa (X=1) sia quando esce croce (X=0)!

Siccome sono due eventi disgiunti, la probabilità corrisponde alla **somma delle probabilità delle due**, per cui 1/2 + 1/2 = 1:

![image-20221221154741443](https://tva1.sinaimg.cn/large/008vxvgGgy1h9btg5wi6uj317i0rsmzp.jpg)

**Tiriamo le somme**:

La funzione di **distribuzione comulativa della variabile X** è costituita nel seguente modo:

![image-20221221154923599](https://tva1.sinaimg.cn/large/008vxvgGgy1h9bthxvzitj31pl0rsgp5.jpg)

> La funzione è **Costante a tratti**, quindi è **continua in tutto R**.

Inoltre il "salto" che la funzione compie tra un valore ed un altro è detto **Ampiezza**, e vale:

![image-20221221155137891](https://tva1.sinaimg.cn/large/008vxvgGgy1h9btk972snj30u10rsmys.jpg)

> Si dice che la funzione "cumula", infatti i valori cumulano: il valore successivo al precedente è cumulato (in questo caso) di 1/2.

#### Esempio - Lancio del dado

In questo caso lavoriamo con 6 uscite sperimentali:

![image-20221221160119217](https://tva1.sinaimg.cn/large/008vxvgGgy1h9btui30baj31o50rs782.jpg)

Di conseguenza la probabilità che X sia uguale ad ogni singola uscita sperimentale è:

![image-20221221160250662](https://tva1.sinaimg.cn/large/008vxvgGgy1h9btvxij1aj31mq0rs40x.jpg)

> L'insieme di tutti i valori che F può assumere si chiama **alfabeto di X** 

**Tracciamo un grafico:**

![image-20221221161029982](https://tva1.sinaimg.cn/large/008vxvgGgy1h9bu3w1utsj31qw0rsn13.jpg)

> Questo accade ogni volta che consideriamo una variabile aleatoria **Discreta**, ovvero una variabile aleatoria in cui il numero di valori possibili che assume, è un insieme finito **discreto o numerabile**.

**Nota:** la *Variabile Aleatoria* non è x (piccolo), ma X (grande)! x (piccolo) è solo la variabile indipendente, che facciamo scorrere sull'asse (delle x) per far generare valori alla funzione F<sub>X</sub>(x).

#### Esempio - Lancio della moneta finchè non ottengo testa

In questo caso l'insieme delle uscite sperimentali è **infinito numerabile**, perchè posso avere infinite **sequenze** di uscite sperimentali elementari finchè non ottengo una singola sequenza di uscite sperimentali che mi dia testa.

Costruendo la nostra variabile aleatoria X abbiamo che:

![image-20221221163322606](https://tva1.sinaimg.cn/large/008vxvgGgy1h9burp99otj319e0rswgn.jpg)

Procediamo calcolando la probabilità di ogni valore (1,2,...n):

![image-20221221163403311](https://tva1.sinaimg.cn/large/008vxvgGgy1h9buseawe9j32yp0rstgi.jpg)

> Ci accorgiamo che "l'ultima probabilità" è sempre più piccola

![image-20221221163804789](https://tva1.sinaimg.cn/large/008vxvgGgy1h9buwk8bwgj31i30rsgoq.jpg)

> Nel caso in cui abbiamo un insieme infinito numerabile, la funzione è sempre a "scalini", ma non diverge a +∞

🏁 Intervallo

