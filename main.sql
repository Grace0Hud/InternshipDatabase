.header on
.mode column

/*A table for the companies, to include the Name, location, business sector and contact information*/
CREATE TABLE companies
(
  company_name TEXT PRIMARY KEY,
  location ADDRESS,
  sector TEXT,
  contact_info INTEGER
);

/*A table for the internship positions, to include the position title, company name, application deadline, duration of the position, description of responsibilities and requirements, pay and any other pertinent information.*/
CREATE TABLE internships
(
  position TEXT PRIMARY KEY,
  company_name TEXT,
  deadline TEXT,
  duration_days INTEGER,
  describe TEXT,
  pay DOUBLE,
  FOREIGN KEY (company_name) REFERENCES companies(company_name)
);

INSERT INTO companies VALUES
('test', 'test', 'test', 4322221);

.print 'Companies'
SELECT * FROM companies;

INSERT INTO internships VALUES
('test', 'test', 'test', 42, 'test', 2.33);

.print
.print 'Internships'
SELECT * FROM internships;