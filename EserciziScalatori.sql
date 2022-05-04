/* Query 1 - Trovare l'insieme (non il multi-insieme) delle coppie (A,B)
tali che A è uno scalatore e B è un continente in cui A ha effettuato una scalata.*/

select Scalata.scalatore, Nazione.continente
from Scalata join Nazione on Scalata.nazione=Nazione.nome
    join Scalatore on Scalata.scalatore=Scalatore.cf
group by Scalata.scalatore, Nazione.continente;


