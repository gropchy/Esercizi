/* Query 1 - Trovare l'insieme (non il multi-insieme) delle coppie (A,B)
tali che A è uno scalatore e B è un continente in cui A ha effettuato una scalata.*/

select Scalata.scalatore, Nazione.continente
from Scalata join Nazione on Scalata.nazione=Nazione.nome
    join Scalatore on Scalata.scalatore=Scalatore.cf
group by Scalata.scalatore, Nazione.continente;

/* Query 2 - Per ogni scalatore nato prima del 1980, Trovare tutti i continenti in cui ha effettuato una scalata,
ordinando il risultato per codice fiscale e, a parità di codice fiscale, per il nome del continente. */

select distinct Nazione.continente, Scalatore.cf
from Scalata join Nazione on Scalata.nazione=Nazione.nome
    join Scalatore on Scalata.scalatore=Scalatore.cf
where Scalatore.annoNascita<1980
order by Scalatore.cf, Nazione.continente 

/* Query 3 - Trovare le nazioni (mostrando, per ciascuna, anche il continente) nelle quali è stata effettuata almeno una scalata
da uno scalatore con meno di 20 anni. */

select distinct Nazione.nome, Nazione.continente
from Scalata join Nazione on Scalata.nazione=Nazione.nome
    join Scalatore on Scalata.scalatore=Scalatore.cf
where Scalata.anno-Scalatore.annoNascita<20

