DO $$
BEGIN
    FOR i IN 1..250 LOOP
        INSERT INTO payments (loan_id, payment_amount, payment_date)
        VALUES (
            i,  -- Assume que o loan_id está sendo incrementado de 1 a 250
            200 + (i * 10),  -- Valor fictício do pagamento
            NOW() - INTERVAL '1 month' * i
        );
    END LOOP;
END $$;
