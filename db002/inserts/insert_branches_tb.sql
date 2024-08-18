DO $$
BEGIN
    FOR i IN 1..250 LOOP
        INSERT INTO branches (branch_name, address, phone_number)
        VALUES (
            'Branch ' || i,
            'Branch Address ' || i,
            '123-456-' || LPAD(i::TEXT, 4, '0')
        );
    END LOOP;
END $$;
