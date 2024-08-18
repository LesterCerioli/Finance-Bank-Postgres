DO $$
BEGIN
    FOR i IN 1..250 LOOP
        INSERT INTO employees (branch_id, full_name, email, position, salary)
        VALUES (
            (i % 250) + 1,  -- Distribui os funcionários pelas agências
            'Employee ' || i,
            'employee' || i || '@example.com',
            CASE WHEN i % 2 = 0 THEN 'Manager' ELSE 'Teller' END,
            3000 + (i * 100)
        );
    END LOOP;
END $$;
