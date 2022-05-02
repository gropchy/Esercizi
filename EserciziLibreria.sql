
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

/*8-Titolo e anno di pubblicazione di romanzi di autori viventi */
select Romanzo.Titolo, Romanzo.AnnoPubblicazione
from Romanzo, Autore 
where Romanzo.Autore=Autore.ID and Autore.DataMorte is null


/* 9. Romanzi di scrittori viventi, oppure morti ma non a Milano */
select Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore=Autore.ID and (Autore.DataMorte is null or Autore.LuogoMorte!="Milano")


/* 10. Titolo e anno di pubblicazione dei romanzi di scrittori nati a Roma */
select Romanzo.Titolo, Romanzo.AnnoPubblicazione
from Romanzo, Autore 
where Romanzo.Autore=Autore.ID and Autore.LuogoNascita="Roma"

/*11. Romanzi con titolo che inizia per “guerra”*/
select Romanzo.Titolo
from Romanzo
where Romanzo.Titolo like "guerra%"

/*12. Romanzi con la parola “Sposi” nel titolo*/
select Romanzo.Titolo
from Romanzo
where Romanzo.Titolo like "%Sposi%"

/*13. Romanzi con penultima lettera “i” nel titolo*/
select Romanzo.Titolo
from Romanzo
where Romanzo.Titolo like "%i_"

/*14. Romanzi il cui titolo termina per “blues”*/
select Romanzo.Titolo
from Romanzo
where Romanzo.Titolo like "%blues"

/*15. Romanzi pubblicati del ventesimo secolo e con la parola “Zeno” nel titolo*/
select Romanzo.Titolo
from Romanzo
where Romanzo.AnnoPubblicazione>=1901 and Romanzo.AnnoPubblicazione<=2000 and Romanzo.Titolo like "%Zeno%"

/*16. Romanzi pubblicati prima del 1900 e con la parola “Sposi” nel titolo, scritta l’iniziale maiuscola o minuscola*/
select Romanzo.Titolo
from Romanzo
where Romanzo.AnnoPubblicazione<1900 and (Romanzo.Titolo like "%Sposi%" or Romanzo.Titolo like "%sposi%")


/*17. Romanzi di Alessandro Manzoni*/
select Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore=Autore.ID and Autore.Nome="Alessandro" and Autore.Cognome="Manzoni"

/*18. Titoli dei romanzi scritti da Don DeLillo, escludendo eventuali duplicati*/
select distinct Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore=Autore.ID and Autore.Nome="Don" and Autore.Cognome="DeLillo"

/*19. Romanzi con il personaggio di Harry Potter*/
select Romanzo.Titolo
from Romanzo, PersonaggioRomanzo, Personaggio 
where PersonaggioRomanzo.Romanzo=Romanzo.ID and PersonaggioRomanzo.Personaggio=Personaggio.ID and Personaggio.Nome="Harry" and Personaggio.Cognome="Potter"



