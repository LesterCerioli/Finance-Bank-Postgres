DO $$
BEGIN
    FOR i IN 1..250 LOOP
        INSERT INTO customers (full_name, email, phone_number, date_of_birth, address)
        VALUES (
            'Customer ' || i,
            'customer' || i || '@example.com',
            '123-456-' || LPAD(i::TEXT, 4, '0'),
            '1990-01-01'::DATE + (i % 365),
            'Address ' || i
        );
    END LOOP;
END $$;
