--her bir replacement_cost için kaç farklı film sayısı old. gösterir
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost;

--rental_rate'e göre en uzun filmlerin sürelerini bul
SELECT rental_rate, MAX(length) FROM film
GROUP BY rental_rate;

--her bir replacement_cost için en kısa filmleri bul
SELECT replacement_cost, MIN(length) FROM film
GROUP BY replacement_cost;

--her bir replacement_cost ve rental_rate için en kısa filmleri bul ve artan length'e göre sırala
SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length);

--her bir replacement_cost ve rental_rate için en kısa filmleri bul ve artan rental_rate, azalan replacement_cost'a göre sırala
SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY rental_rate, replacement_cost DESC;

--film sayısı 325'den büyük olan rental_rate'leri göster
SELECT rental_rate, COUNT(*) FROM film
GROUP BY rental_rate
HAVING COUNT(*)>325;

--payments tablosunda 100 den daha fazla satış yapılan müşterileri göster
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

--film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating FROM film
GROUP BY rating;

--film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan 
--replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

--customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;

--city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra 
--en fazla şehir sayısı barındıra country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id, COUNT(*) from city
GROUP BY country_id
ORDER BY COUNT(*) DESC
LIMIT 1;
