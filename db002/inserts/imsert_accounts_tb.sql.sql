DO $$
BEGIN
    FOR i IN 1..250 LOOP
        INSERT INTO accounts (account_number, customer_id, account_type, balance, created_at)
        VALUES (
            'ACC-' || LPAD(i::TEXT, 10, '0'),
            i,  -- Assume que o customer_id está sendo incrementado de 1 a 250
            CASE WHEN i % 2 = 0 THEN 'Checking' ELSE 'Savings' END,
            1000 + (i * 10),  -- Saldo inicial fictício
            NOW() - INTERVAL '1 day' * i
        );
    END LOOP;
END $$;
