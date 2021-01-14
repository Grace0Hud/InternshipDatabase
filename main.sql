.header on
.mode column

CREATE TABLE companies
(
  company_name TEXT,
  location ADDRESS,
  sector TEXT,
  contact_info INTEGER
);

INSERT INTO companies VALUES
('test', 'test', 'test', 4322221);

.print 'companies'
SELECT * FROM companies