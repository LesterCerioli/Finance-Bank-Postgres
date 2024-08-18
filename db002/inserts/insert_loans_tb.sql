DO $$
BEGIN
    FOR i IN 1..250 LOOP
        INSERT INTO loans (customer_id, loan_amount, interest_rate, loan_status, created_at)
        VALUES (
            i,  -- Assume que o customer_id está sendo incrementado de 1 a 250
            5000 + (i * 100),  -- Valor fictício do empréstimo
            5.5 + (i % 3),  -- Taxa de juros fictícia
            CASE WHEN i % 3 = 0 THEN 'Approved' ELSE 'Pending' END,
            NOW() - INTERVAL '30 day' * i
        );
    END LOOP;
END $$;
