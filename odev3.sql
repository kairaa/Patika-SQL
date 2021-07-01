--SELECT * FROM customer
--WHERE first_name ILIKE 'a%' AND last_name LIKE '%y'; 	-- ILIKE LIKE'ın case sesitive olmayan durumudur
--SELECT * FROM customer
--WHERE first_name LIKE 'J_an';	-- _ tek bir karakterin değişeceği durumlarda kullanır
--WHERE first_name LIKE 'J_';
--WHERE first_name ~~ 'J%n';	-- LIKE yerine ~~ kullanılabilir (case sensitivedir)
--WHERE first_name ~~* 'j%';	--ILIKE yerine ~~* kullanılabilir
--WHERE first_name !~~'A%';		-- !~~ not like anlamına gelir (a ile başlamayanları getirir, ilike için de geçerlidir)

--ODEV

--country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri 
--ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
SELECT country FROM country
WHERE country LIKE 'A%a';

--country tablosunda bulunan country sütunundaki ülke isimlerinden
--en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
SELECT country FROM country
WHERE country LIKE '_____%n';

--film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük
--harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
SELECT title FROM film
WHERE title ILIKE '%t%t%t%t%';

--film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve
--uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
SELECT title, length, rental_rate FROM film
WHERE title LIKE 'C%' AND length>90 and rental_rate IN (2.99);
