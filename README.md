# Codifica di testi-2021
Repository che contiene gli esercizi ed il progetto per l'esame _Codifica di testi_ dell'Università di Pisa

## 1. Esercizio 1:
Creare un file .xml ed inserire un prologo con la dichiarazione XML e un commento con le vostre informazioni.

## 2. Esercizio 2:
Scrivere e fare il check di un xml non opportunamente annidato.

## 3. Esercizio 3:
Aprire il file XML non ben formato presente nel repository github:
* validarlo con un parser XML,
* correggerlo (commentando gli errori e le modifiche),
* aggiungere un figlio (child) ad un elemento,
* aggiungere un fratello (sibling) ad un elemento.

## 4. Esercizio 4:
Inserire all’interno di un tag un frammento di codice HTML.

## 5. Esercizio 5:
Definire i seguenti elementi:
* elemento root: TEI
* elementi figli:
* header (obbligatorio una occorrenza)
* facsimile (opzionale una occorrenza)
* text (obbligatorio almeno una occorrenza)

Gli elementi header, facsimile e text hanno tutti un content model testuale.

## 6. Esercizio 6:
root: TEI

Figli:  

* header(obbligatorio una volta sola)
* facsimile(opzionale una volta sola)
* testo(obbligatorio una o più volte)
* testo è un mixed content con possibile elemento <seg>

 Attributi:  
  
* header: type: (fixed, CDATA “intestazione”); lang (opzionale, NMTOKEN)
* facsimile: source: (obbligatorio); ref (optionale, IDREFS)
* testo: id (obbligatorio, ID) type (opzionale contenuto testuale)

