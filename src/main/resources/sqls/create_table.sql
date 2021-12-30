CREATE TABLE accounts (
	account_id long PRIMARY KEY,
	balance long,
	account_type VARCHAR(15),
);

CREATE TABLE customer (
	customer_id long PRIMARY KEY,
	customer_name VARCHAR(50) NOT NULL,
	address VARCHAR(50), 
	date_of_birth TIMESTAMP
);


CREATE TABLE customer_accounts(
    customer_id INTEGER NOT NULL REFERENCES customers (customer_id),
    account_id integer NOT NULL REFERENCES accounts (account_id)
);

CREATE TABLE TRANSACTIONS(
	transaction_id int PRIMARY KEY,
	transaction_date TIMESTAMP,
	description VARCHAR(50),
	credit_debit VARCHAR(10),
	amount int,
	account_number int NOT NULL REFERENCES accounts (account_id)
);

