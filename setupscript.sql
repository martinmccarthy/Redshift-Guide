
DROP TABLE IF EXISTS companies;
CREATE TABLE companies(
  company_name VARCHAR(100), ceo VARCHAR(100));

INSERT INTO companies VALUES
    ('coca-cola', 'James Quincey'),
    ('sony', 'Kenichiro Yoshida'),
    ('paramount', 'Brian Robbins'),
    ('amazon', 'Andy Jassy');
