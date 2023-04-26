USE bank;

Select client_id from client Where district_id = 1 order by client_id asc limit 5;

Select client_id from client Where district_id = 72 order by client_id desc limit 1;

select amount from loan order by amount asc limit 3;

select distinct(status) from loan order by status asc;

select loan_id from loan order by payments desc limit 1;	

select account_id, amount from loan order by account_id asc limit 5;	

select account_id from loan where duration = 60 order by amount asc limit 5;

select distinct(k_symbol) from `order`;

select order_id from `order` where account_id = 34;

select distinct(account_id) from `order` where order_id between 29540 and 29560 order by account_id asc;

select trans_id, date, type, amount from trans where account_id = 793 order by date desc limit 10;

select district_id, count(client_id) as num_clients from client where district_id < 10 group by district_id order by district_id asc; 

select `type`, count(card_id) as card_num from card group by `type` order by card_num desc;

select account_id, sum(amount) as top_amount from loan group by account_id order by top_amount desc limit 10;

select date, count(loan_id) as loans_pd from loan where date <"930907" group by date order by date desc;

select date, duration, count(loan_id) as loans_pd from loan where date >="971201" and date < "980101" group by date, duration having date like "9712%" order by date asc, duration asc;

select account_id, `type`, sum(amount) from trans where account_id = 396 group by account_id, `type` order by `type` asc;