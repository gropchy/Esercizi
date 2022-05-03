USE Programmatori;

/* Query 1 - Trovare il codice dei programmatori che sono stati autori di almeno un programma scritto in Java dopo il 2000.*/
select Programmatore.codice
from Autore join Programmatore on Programmatore.codice=Autore.codice
    join Programma on Programma.id=Autore.id
where Programma.anno>2000 and Programma.linguaggio="Java";

/* Query 1a - altro modo */
select Autore.codice
from Autore join Programma on Programma.id=Autore.id
where Programma.linguaggio="Java" and Programma.anno>=2000

/* Query 2 - Trovare il nome e la categoria dei programmatori che sono stati autori di almeno un programma scritto
in un linguaggio diverso da Python, ordinando il risultato rispetto al nome dei programmatori.*/
select Programmatore.nome, Programmatore.categoria
from Autore join Programmatore on Programmatore.codice=Autore.codice
    join Programma on Programma.id=Autore.id
where Programma.linguaggio!="Python";
order by Programmatore.nome;

/* Query 3 - Per ogni programmatore di categoria 10, Trovare il suo codice e l'anno in cui ha scritto il primo programma in un linguaggio diverso da Java.*/
select Programmatore.codice, Programma.anno
from Autore join Programmatore on Programmatore.codice=Autore.codice
    join Programma on Programma.id=Autore.id
where Programmatore.categoria=10 and Programma.linguaggio !="Java";

/* Query 3a -fatto usando min*/
select Programmatore.codice, min(anno)
from Programmatore join Autore on Programmatore.codice=Autore.codice
    join programma on Programma.id=Autore.id
where linguaggio<>"Java" and categoria=10
group by Programmatore.codice;

/* Query 4 - Trovare le coppie dei codici di programmatori che sono stati coautori di almeno un programma scritto in Python.*/
select distinct Autore.codice as Autore, Autore2.codice as Coautore
from Autore join Programma on Programma.id = Autore.id
    join Autore Autore2 on Autore2.id = Programma.id
where Programma.linguaggio = "Python" and Autore.codice <> Autore2.codice and Autore.codice>Autore2.codice;


/*Query 7 Per ogni linguaggio calcolare quanti sono gli autori dei programmi scritti in quel linguaggio.*/
select COUNT(Autore.codice), Programma.linguaggio
from Autore join Programmatore on Programmatore.codice = Autore.codice
    join Programma on Programma.id = Autore.id
group by Programma.linguaggio; 

