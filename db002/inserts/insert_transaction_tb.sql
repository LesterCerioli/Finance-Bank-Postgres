DO $$
BEGIN
    FOR i IN 1..250 LOOP
        INSERT INTO transactions (account_id, transaction_type, amount, transaction_date, description)
        VALUES (
            i,  -- Assume que o account_id está sendo incrementado de 1 a 250
            CASE WHEN i % 2 = 0 THEN 'Deposit' ELSE 'Withdrawal' END,
            100 + (i * 5),  -- Valor fictício da transação
            NOW() - INTERVAL '1 day' * i,
            'Transaction ' || i
        );
    END LOOP;
END $$;
