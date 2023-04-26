USE bank;
SELECT * from card;

-- Query #1
SELECT client_id, district_id
	FROM client
		WHERE district_id = 1 
	LIMIT 5;

-- Query #2
SELECT client_id, district_id
	FROM client
		WHERE district_id = 72
	ORDER BY client_id DESC
    LIMIT 1;
    
-- Query #3
SELECT * from loan;

SELECT loan_id, amount
	FROM loan
	ORDER BY amount ASC
    LIMIT 3;
    
-- Query #4
SELECT DISTINCT status
	FROM loan
    ORDER BY status ASC;
    
-- Query #5
SELECT loan_id, payments
	FROM loan
        ORDER BY payments DESC
	LIMIT 1;
    
-- Query #6
SELECT account_id, amount
	FROM loan
		ORDER BY account_id ASC
	LIMIT 5;
    
-- Query #7
SELECT account_id
	FROM loan
		WHERE duration = 60
	ORDER BY amount ASC
    LIMIT 5;
    
-- Query #8
SELECT * FROM `order`;

SELECT DISTINCT k_symbol
	FROM `order`
    ORDER BY k_symbol ASC;
    
-- Query #9
SELECT order_id
	FROM `order`
		WHERE account_id = 34;

-- Query #10
SELECT DISTINCT account_id
	FROM `order`
		WHERE order_id BETWEEN 29540 AND 29560
        
-- Query #11
SELECT amount
	FROM `order`
		WHERE account_to = 30067122;
        
-- Query #12
SELECT * FROM trans;

SELECT trans_id, date, type, amount
	FROM trans
		WHERE account_id = 793
	ORDER BY date DESC
    LIMIT 10;
    
-- Query #13
SELECT * FROM client;

SELECT district_id, COUNT(client_id) as num_clients
	FROM client
		WHERE district_id < 10
			GROUP BY district_id
				HAVING num_clients
			ORDER BY district_id ASC;


-- Query #14
SELECT * FROM card;

SELECT DISTINCT type, COUNT(card_id) as total_cards
	FROM card
		GROUP BY type
		HAVING total_cards
	ORDER BY total_cards DESC;
    
-- Query #15

  SELECT account_id, SUM(amount) as total_amount
	FROM loan
		GROUP BY account_id
			HAVING total_amount
		ORDER by total_amount DESC
	LIMIT 10;
    
-- QUERY #16
SELECT * FROM loan;

SELECT `date`, COUNT(loan_id) as num_loans
	FROM loan
		WHERE `date` < 930907
		 GROUP BY `date`
			HAVING num_loans
		ORDER by `date` DESC;	
        
        
-- QUERY #17

SELECT `date`, duration, COUNT(loan_id) as num_loans
	FROM loan
		WHERE `date` >= 971201 AND `date` <=  971231
			GROUP BY `date`, duration
         ORDER BY `date` ASC, duration ASC;
         
         
-- Query #18
SELECT * FROM trans;
SELECT account_id, type, SUM(amount) AS total_amount
	FROM trans
		WHERE account_id = 396
			GROUP BY account_id, type
		ORDER BY type ASC;


         
