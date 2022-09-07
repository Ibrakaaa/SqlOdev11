--Merhabalar,
--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
--actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
--İlk 3 sorguyu tekrar eden veriler için de yapalım.

--CEVAPLAR
--Cevap 1:
(SELECT first_name FROM actor)
UNION
(SELECT first_name FROM customer);

--Cevap 2: 
(SELECT first_name FROM actor)
INTERSECT
(SELECT first_name FROM customer);

--Cevap 3: 
(SELECT first_name from actor)
EXCEPT
(SELECT first_name from customer);

--Cevap 4.1:
(SELECT first_name FROM actor)
UNION ALL 
(SELECT first_name FROM customer);

--Cevap 4.2:
(SELECT first_name FROM actor)
INTERSECT ALL 
(SELECT first_name FROM customer);

--Cevap 4.3:
(SELECT first_name from actor)
EXCEPT ALL
(SELECT first_name from customer);


