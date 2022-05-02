
/* Query 1 - persone maggiorenni, con nome e regione di nascita*/
select Persona.Nome, Città.Regione
from Persona, Città
where Persona.CittàNascita = Città.Nome and Persona.Età > 18 

/* Query 2 - coppie <genitore,figlio> nati nella stessa città */
select PG.Nome
from Genia join Persona PG on Genia.Genitore=PG.Nome
    join Persona PF on Genia.Figlio=PF.Nome
where PG.CittàNascita = PF.CittàNascita

/* Query 3 - città in cui è nato almeno un genitore di oltre 50 anni*/
select distinct Genia.Genitore
from Persona, Genia
where Persona.Nome = Genia.Genitore and Persona.Età > 50

