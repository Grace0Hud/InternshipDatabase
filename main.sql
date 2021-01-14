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

/*datetime("now","localtime") gets the local time*/
INSERT INTO internships VALUES
('a', 'test1', datetime('2021-01-14'), 42, 'test', 2.33),
('b', 'test1', datetime('2021-01-17'), 42, 'test', 23.33),
('c', 'test3', datetime('2021-01-04'), 42, 'test', 4.33);

.print
/*list all the positions chronologically by application deadline*/
.print 'Internships'
SELECT * FROM internships
ORDER BY deadline;

/*ability to search by company for available internships.*/
.print
.print 'Internships from Test1'
SELECT * FROM internships
WHERE company_name='test1';

/*designed query - by pay */
.print
.print 'Sorted by highest pay'
SELECT position, company_name, pay FROM internships
ORDER BY pay DESC;
