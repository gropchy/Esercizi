
/* Query 1 - persone maggiorenni, con nome e regione di nascita*/
select Persona.Nome, Città.Regione
from Persona, Città
where Persona.CittàNascita = Città.Nome and Persona.Età > 18 