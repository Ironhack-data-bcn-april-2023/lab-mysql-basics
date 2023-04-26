-- query 1
USE bank;
SELECT * FROM client;

SELECT client_id
	FROM client
		WHERE district_id = 1
	ORDER BY client_id ASC
	LIMIT 5;
    
-- query 2
SELECT client_id
	FROM client
		WHERE district_id = 72
	ORDER BY client_id DESC
	LIMIT 1;
    
-- query 3
SELECT amount
	FROM loan
	ORDER BY amount ASC
    LIMIT 3;
    
-- query 4
SELECT DISTINCT(status)
	FROM loan
	ORDER BY status ASC;
    
-- query 5
SELECT loan_id, payments
	FROM loan
	ORDER BY payments DESC
	LIMIT 1;
    
-- query 6
SELECT account_id, amount
	FROM loan
	ORDER BY account_id ASC
	LIMIT 5;

-- query 7
SELECT account_id, amount, duration
	FROM loan
		WHERE duration = 60
	ORDER BY amount ASC
	LIMIT 5;
    
-- query 8
SELECT DISTINCT(k_symbol)
	FROM `order`
	ORDER BY k_symbol ASC;

-- query 9
SELECT order_id, account_id
	FROM `order`
		WHERE account_id = 34
	ORDER BY order_id ASC;
    
-- query 10
SELECT DISTINCT(account_id)
	FROM `order`
		WHERE order_id >= 29540 and order_id <= 29560;

-- query 11 
SELECT amount
	FROM `order`
		WHERE account_to = 30067122;
        
-- query 12
SELECT trans_id, date, type, amount
	FROM trans
		WHERE account_id = 793
	ORDER BY date DESC
    LIMIT 10;
    
-- query 13
SELECT district_id, COUNT(client_id)
	FROM `client`
    GROUP BY district_id
			HAVING district_id < 10
	ORDER BY district_id ASC;

-- query 14
SELECT `type`, COUNT(type)
	FROM card
    GROUP BY `type`
    ORDER BY COUNT(type) DESC;

-- query 15
SELECT account_id, SUM(amount)
	FROM `loan`
    GROUP BY account_id
	ORDER BY SUM(amount) DESC
    LIMIT 10;

-- query 16
SELECT SUM(date), COUNT(date)
	FROM `loan`
    GROUP BY date
		HAVING date < 930907
	ORDER BY SUM(date) DESC;

-- query 17
SELECT date, duration, COUNT(date)
	FROM `loan`
    WHERE date LIKE "9712%"
    GROUP BY `date`, duration 
	ORDER BY `date`, duration DESC;

-- query 18
SELECT account_id, type, SUM(amount)
	FROM trans
    WHERE account_id = 396
    GROUP BY `type`
	ORDER BY `type` ASC;