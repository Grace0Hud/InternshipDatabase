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
('SoCal Edison', 'Rosemead California', 'Power', '1(800)655-4555'),
('Dropbox', 'San Fransisco, CA', 'remote collaboration', 'https://www.dropbox.com/support'),
('American Express', 'Remote', 'banking', 'Recruitment.Support.Americas@aexp.com'),
('Fivestars', 'San Francisco, CA', 'customer loyalty programs', 'NA'),
('VMWare', 'Palo Alto, CA', 'Virtual Machines', 'careers@vmware.com'),
('Amazon', 'Moreno Valley, CA', 'shipping', 'NA'),
('Serco', 'USA', 'public service', '(703)263-6000'),
('Bae Systems', 'Hill AFB, Utah', 'private defense','1(571)461-6000'),
('Tyler Technologies', 'remote', 'education technology', '(972)713-3700'),
('TCG', 'Remote', 'investment', 'info@tcg.co');

.print 'COMPANIES'
SELECT * FROM companies;

/*datetime("now","localtime") gets the local time*/
INSERT INTO internships VALUES
('IT-Cyber', 'SoCal Edison', '2021-03', 183, 'https://www.edisoncareers.com/ShowJob/Id/1013139/2021%20Summer%20Internship%20%20%20IT%20(Cybersecurity)', 0.00),
('Launch Internship', 'Dropbox', '2021-06', null, 'https://www.dropbox.com/jobs/listing/2309960?gh_jid=2309960&gh_src=b946fd9d1us', 404),
('Campus Recruitment - Technology', 'American Express', '2021-06', 70, 'https://jobs.americanexpress.com/global/jobs/20006515?lang=en-us&src=JB-10780&utm_source=Indeed&utm_medium=organic&utm_campaign=Indeed', 0.00),
('Software Engineer Intern', 'Fivestars', '2021-06', 91, 'https://www.fivestars.com/careers/?gh_jid=2324334', 404),
('Core Graphics Technical Team', 'VMWare', 'soon?', 0, 'https://careers.vmware.com/main/jobs/R2011142?lang=en-us&source=LIPJ', 0),
('IT Support Engineer', 'Amazon', '2021-06', 70, 'https://www.glassdoor.com/partner/jobListing.htm?pos=102&ao=133043&s=58&guid=000001772349aaab9b37a77ffa964f77&src=GD_JOB_VIEW&t=SR&vt=w&cs=1_21f52a37&cb=1611204767081&jobListingId=3771134124', 404),
('STEP Tecnical track', 'Serco', '2021-05-24', 81, 'https://careers-sercona.icims.com/jobs/37457/2021-step-summer-internship-program-%28technical-track%29/job', 404),
('ICBM Cybersecurity', 'Bae Systems', '2021', 0, 'https://jobs.baesystems.com/global/en/job/63371BR/2021-ICBM-Cybersecurity-Intern-Co-op-Computer-Science-Computer-Engineering-Information-Technology', 404),
('Graphic Design Intern', 'Tyler Technologies', '2021-04', 0,'https://www.dice.com/jobs/detail/f1b3e345cbb3cbc69fea6f9f943eb539?src=32&utm_source=appcast&utm_medium=aggregator&utm_campaign=talent', 0),
('Engineering Intern', 'TCG', '2021-06-07', 67, 'https://boards.greenhouse.io/tcgcapital/jobs/5033454002?gh_src=8121a8002us', 404);

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
