/* Query 1 - Trovare l'insieme (non il multi-insieme) delle coppie (A,B)
tali che A è uno scalatore e B è un continente in cui A ha effettuato una scalata.*/

select Scalata.scalatore, Nazione.continente
from Scalata join Nazione on Scalata.nazione=Nazione.nome
    join Scalatore on Scalata.scalatore=Scalatore.cf
group by Scalata.scalatore, Nazione.continente;

/* Query 2 - Per ogni scalatore nato prima del 1980, Trovare tutti i continenti in cui ha effettuato una scalata,
ordinando il risultato per codice fiscale e, a parità di codice fiscale, per il nome del continente. */

select distinct nazione.continente, scalatore.cf
from scalata join nazione on scalata.nazione=nazione.nome
    join scalatore on scalata.scalatore=scalatore.cf
where scalatore.annoNascita<1980
order by scalatore.cf, nazione.continente 


