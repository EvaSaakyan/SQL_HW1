CREATE TABLE states (
    state_id SERIAL PRIMARY KEY,
    state    VARCHAR(255) NOT NULL UNIQUE,
    country  VARCHAR(255) NOT NULL
);

INSERT INTO states (state, country)
SELECT DISTINCT state, country FROM customers;

ALTER TABLE customers ADD COLUMN state_id INTEGER;

UPDATE customers c
SET state_id = s.state_id
FROM states s
WHERE c.state = s.state;


ALTER TABLE customers ALTER COLUMN state_id SET NOT NULL;

ALTER TABLE customers DROP COLUMN state, DROP COLUMN country;
