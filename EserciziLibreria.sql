
/*1-Romanzi pubblicati nel 2009*/
select Romanzo.Titolo
from Romanzo
where AnnoPubblicazione=2009

/*2-Romanzi pubblicati a partire dal 1990*/
select Romanzo.Titolo
from Romanzo
where AnnoPubblicazione>=1990
