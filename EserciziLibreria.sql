
/*1-Romanzi pubblicati nel 2009*/
select Romanzo.Titolo
from Romanzo
where AnnoPubblicazione=2009

/*2-Romanzi pubblicati a partire dal 1990*/
select Romanzo.Titolo
from Romanzo
where AnnoPubblicazione>=1990

/*3-Romanzi del ventesimo secolo*/

select Romanzo.Titolo
from Romanzo
where Romanzo.AnnoPubblicazione>=1901 and Romanzo.AnnoPubblicazione<=2000

/*4-Autore (cioè Nome e Cognome) e Titolo di tutti i romanzi*/

select Autore.nome, Autore.cognome, Romanzo.titolo
from Autore, Romanzo
where Romanzo.Autore=Autore.ID

/*5-Autore (cioè Nome e Cognome) e Titolo di tutti i romanzi, ordinati per cognome e nome
dell'autore*/


select Autore.Nome, Autore.Cognome, Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore=Autore.ID
order by Autore.Cognome, Autore.Nome


/*6-Autore (cioè Nome e Cognome) e Titolo dei romanzi di autori russi, 
ordinati per cognome e nome dell’autore*/

select Autore.Nome, Autore.Cognome, Romanzo.Titolo
from Romanzo.Autore=Autore.ID and Autore.Nazionalità=’Russa’
order by Autore.Cognome, Autore.Nome

/* 7-Titolo dei romanzi di autori nati nel ventesimo secolo, 
ordinati per cognome e nome dell’autore e – 
a parità di autore – di data di pubblicazione */

select Romanzo.Titolo
from Romanzo, Autore 
where Romanzo.Autore=Autore.ID and Autore.DataNascita>=1901 and Autore.DataNascita<=2000
order by Autore.Cognome, Autore.Nome, Romanzo.AnnoPubblicazione







