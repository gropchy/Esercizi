/* Query 1 - Trovare l'insieme (non il multi-insieme) delle coppie (A,B)
tali che A è uno scalatore e B è un continente in cui A ha effettuato una scalata.*/

select distinct scalata.scalatore, nazione.continente
from scalata join nazione on scalata.nazione=nazione.nome
    join scalatore on scalata.scalatore=scalatore.cf
order by scalata.scalatore

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

/* Query 4 - Per ogni nazione, Trovare il numero di scalate effettuate da scalatori nati in quella nazione. */
select count(*) as numeroScalatori, Nazione.nome
from Scalata join Nazione on Scalata.nazione=Nazione.nome
    join Scalatore on Scalata.scalatore=Scalatore.cf
where Scalatore.nazioneNascita=Scalata.nazione
group by Nazione.nome

/* Query 9 - Calcolare gli scalatori tali che tutte le scalate che hanno effettuato nella nazione di nascita le hanno
effettuate quando meno di 20 anni. */

select Scalata.scalatore
from Scalata 
where Scalata.scalatore in (select Scalatore.cf 
    from Scalatore 
    where Scalata.anno-Scalatore.annoNascita<20 and Scalatore.nazioneNascita != Scalata.nazione
    )