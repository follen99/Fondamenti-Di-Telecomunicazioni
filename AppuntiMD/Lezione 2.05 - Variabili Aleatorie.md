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

### Funzione di distribuzione comulativa

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
2) Ci chiediamo: "qual è la probabilità che x sia **Minore o Uguale** a -1?"

![image-20221221150947675](/Users/follen/Library/Application Support/typora-user-images/image-20221221150947675.png)