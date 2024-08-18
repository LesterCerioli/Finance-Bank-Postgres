-- Creation of the customers table (If it does not already exist)
CREATE TABLE IF NOT EXISTS customers (
    customer_id SERIAL PRIMARY KEY,  -- Primary key
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creation of the accounts table (If it does not already exist)
CREATE TABLE IF NOT EXISTS accounts (
    account_id SERIAL PRIMARY KEY,  -- Primary key
    account_number VARCHAR(20) UNIQUE NOT NULL,
    balance NUMERIC(15, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creation of the join table customers_accounts
CREATE TABLE IF NOT EXISTS customers_accounts (
    customer_id INT NOT NULL,   -- Referencing the customer_id column from the customers table
    account_id INT NOT NULL,    -- Referencing the account_id column from the accounts table
    PRIMARY KEY (customer_id, account_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

-- Inserting all existing records from customers and accounts into the join table customers_accounts
INSERT INTO customers_accounts (customer_id, account_id)
SELECT c.customer_id, a.account_id
FROM customers c, accounts a;
