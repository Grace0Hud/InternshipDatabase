.header on
.mode line

/*A table for the companies, to include the Name, location, business sector and contact information*/
CREATE TABLE companies
(
  company_name TEXT PRIMARY KEY,
  location ADDRESS,
  sector TEXT,
  contact_info TEXT
);

/*A table for the internship positions, to include the position title, company name, application deadline, duration of the position, description of responsibilities and requirements, pay and any other pertinent information.*/
CREATE TABLE internships
(
  position TEXT PRIMARY KEY,
  company_name TEXT,
  deadline TEXT,
  duration_days INTEGER,
  describe TEXT,
  pay MONEY,
  FOREIGN KEY (company_name) REFERENCES companies(company_name)
);

INSERT INTO companies VALUES
('SoCal Edison', 'Rosemead California', 'Power', '18006554555'),
('Dropbox', 'San Fransisco, CA', 'remote collaboration', 'https://www.dropbox.com/support'),
('American Express', 'Remote', 'banking', 'Recruitment.Support.Americas@aexp.com');

.print 'COMPANIES'
SELECT * FROM companies;

/*datetime("now","localtime") gets the local time*/
INSERT INTO internships VALUES
('IT-Cyber', 'SoCal Edison', '2021-03', 183, 'https://www.edisoncareers.com/ShowJob/Id/1013139/2021%20Summer%20Internship%20%20%20IT%20(Cybersecurity)', 0.00),
('Launch Internship', 'Dropbox', '2021-06', null, 'https://www.dropbox.com/jobs/listing/2309960?gh_jid=2309960&gh_src=b946fd9d1us', 404),
('Campus Recruitment - Technology', 'American Express', '2021-01-04', 70, 'https://jobs.americanexpress.com/global/jobs/20006515?lang=en-us&src=JB-10780&utm_source=Indeed&utm_medium=organic&utm_campaign=Indeed', 0.00);

.print '------------------------------------------------'
.print
.print 'INTERNSHIPS'
SELECT * FROM internships;
/*list all the positions chronologically by application deadline*/
.print '------------------------------------------------'
.print
.print 'INTERNSHIPS BY DEADLINE'
SELECT * FROM internships
ORDER BY deadline;

/*ability to search by company for available internships.*/
.print '------------------------------------------------'
.print
.print 'TEST 1 INTERNSHIPS'
SELECT * FROM internships
WHERE company_name='SoCal Edison';

/*designed query - by pay */
.print '------------------------------------------------'
.print
.print 'INTERNSHIPS BY PAY (DESC)'
SELECT position, company_name, pay FROM internships
ORDER BY pay DESC;
