
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

