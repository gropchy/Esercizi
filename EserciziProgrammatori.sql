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
select Programmatore.nome, Programmatore.categoria
from Autore join Programmatore on Programmatore.codice=Autore.codice
    join Programma on Programma.id=Autore.id
where Programma.linguaggio!="Python";
order by Programmatore.nome;

/* Query 3 - Per ogni programmatore di categoria 10, Trovare il suo
codice e l'anno in cui ha scritto il primo programma in un
linguaggio diverso da Java.
*/
select Programmatore.codice, Programma.anno
from Autore join Programmatore on Programmatore.codice=Autore.codice
    join Programma on Programma.id=Autore.id
where Programmatore.categoria=10 and Programma.linguaggio !="Java";

/*Query 7 Per ogni linguaggio calcolare quanti sono gli
autori dei programmi scritti in quel linguaggio.*/
USE Programmatori;
select COUNT(Autore.codice), Programma.linguaggio
from Autore join Programmatore on Programmatore.codice = Autore.codice
    join Programma on Programma.id = Autore.id
group by Programma.linguaggio; 

