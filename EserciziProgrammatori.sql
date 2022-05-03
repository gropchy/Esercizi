USE Programmatori;

/* Query 1 - Trovare il codice dei programmatori che sono stati autori di
almeno un programma scritto in Java dopo il 2000.*/
select Programmatore.codice
from Autore join Programmatore on Programmatore.codice=Autore.codice
    join Programma on Programma.id=Autore.id
where Programma.anno>2000 and Programma.linguaggio="Java";

/* Query 2 - Trovare il nome e la categoria dei programmatori
che sono stati autori di almeno un programma scritto
in un linguaggio diverso da Python, ordinando il
risultato rispetto al nome dei programmatori.*/
USE Programmatori;
select Programmatore.nome, Programmatore.categoria
from Autore join Programmatore on Programmatore.codice=Autore.codice
    join Programma on Programma.id=Autore.id
where Programma.linguaggio!="Python";
order by Programmatore.nome;


