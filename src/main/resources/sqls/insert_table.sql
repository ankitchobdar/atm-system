INSERT INTO accounts(account_id, balance, account_type) VALUES (1, 10000, 'SAVINGS');
INSERT INTO accounts(account_id, balance, account_type) VALUES (2, 11000, 'SAVINGS');
INSERT INTO accounts(account_id, balance, account_type) VALUES (3, 12000, 'SAVINGS');
INSERT INTO accounts(account_id, balance, account_type) VALUES (4, 13000, 'SAVINGS');
INSERT INTO accounts(account_id, balance, account_type) VALUES (5, 14000, 'SAVINGS');

INSERT INTO customers(customer_id, customer_name, address, date_of_birth) VALUES (1, 'Ankit Singh', 'Mumbai', '26-Jan-1991');
INSERT INTO customers(customer_id, customer_name, address, date_of_birth) VALUES (2, 'Amit Bholla', 'Pune', '14-Feb-1991');
INSERT INTO customers(customer_id, customer_name, address, date_of_birth) VALUES (3, 'Manish Bhandari', 'Vashi', '2-Mar-1991');
INSERT INTO customers(customer_id, customer_name, address, date_of_birth) VALUES (4, 'Sachin Tendulkar', 'Mumbai', '16-Nov-1991');
INSERT INTO customers(customer_id, customer_name, address, date_of_birth) VALUES (5, 'Neha Sharma', 'Pune', '6-Apr-1991');

INSERT INTO customer_accounts(customer_id, account_id) VALUES (1, 1);
INSERT INTO customer_accounts(customer_id, account_id) VALUES (2, 2);
INSERT INTO customer_accounts(customer_id, account_id) VALUES (3, 3);
INSERT INTO customer_accounts(customer_id, account_id) VALUES (4, 4);
INSERT INTO customer_accounts(customer_id, account_id) VALUES (5, 5);

INSERT INTO transactions(transaction_id,transaction_date,description,credit_debit,amount,account_number) VALUES (1, '01-Jan-2021', 'UPI Transfer', 'credit',  1000, 2);
INSERT INTO transactions(transaction_id,transaction_date,description,credit_debit,amount,account_number) VALUES (2, '15-Mar-2021', 'UPI Transfer', 'credit', 2000, 3);
INSERT INTO transactions(transaction_id,transaction_date,description,credit_debit,amount,account_number) VALUES (3, '12-Apr-2021', 'UPI Transfer', 'credit', 3000, 4);
INSERT INTO transactions(transaction_id,transaction_date,description,credit_debit,amount,account_number) VALUES (4, '26-Jun-2021', 'UPI Transfer', 'credit', 4000, 5);

INSERT INTO transactions(transaction_id,transaction_date,description,credit_debit,amount,account_number) VALUES (5, '01-Dec-2021', 'ATM withdrawal', 'debit', 1000, 1);
INSERT INTO transactions(transaction_id,transaction_date,description,credit_debit,amount,account_number) VALUES (6, '11-Nov-2021', 'ATM withdrawal', 'debit', 1000, 3);
INSERT INTO transactions(transaction_id,transaction_date,description,credit_debit,amount,account_number) VALUES (7, '19-Nov-2021', 'ATM withdrawal', 'debit', 1000, 2);
INSERT INTO transactions(transaction_id,transaction_date,description,credit_debit,amount,account_number) VALUES (8, '12-Feb-2021', 'ATM withdrawal', 'debit', 1000, 3);
INSERT INTO transactions(transaction_id,transaction_date,description,credit_debit,amount,account_number) VALUES (9, '26-May-2021', 'ATM withdrawal', 'debit', 1000, 5);

CREATE SEQUENCE accounts_account_id_seq
start with 1
increment by 1
MINVALUE 1
cycle;

CREATE SEQUENCE customers_customer_id_seq
start with 1
increment by 1
MINVALUE 1
CYCLE;

CREATE SEQUENCE transactions_transaction_id_seq
start with 1
increment by 1
MINVALUE 1
cycle;

select setval('accounts_account_id_seq',COALESCE((select max(account_id) + 1 from accounts), 1));
select setval('customers_customer_id_seq',COALESCE((select max(customer_id) + 1 from customers), 1));
select setval('transactions_transaction_id_seq',COALESCE((select max(transaction_id) + 1 from transactions), 1));


--UPDATE accounts SET account_type ='SAVING';