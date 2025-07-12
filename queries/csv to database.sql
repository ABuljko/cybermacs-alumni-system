LOAD DATA INFILE 'csv/alumnimock.csv'
INTO TABLE Alumni
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;


SHOW VARIABLES LIKE 'secure_file_priv';

SELECT * FROM alumni
LIMIT 10;

LOAD DATA INFILE 'csv/employer.csv'
INTO TABLE employer
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;

SELECT * FROM employer;


LOAD DATA INFILE 'csv/job_posting.csv'
INTO TABLE job_posting
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;

SELECT * FROM job_posting;

LOAD DATA INFILE 'csv/JOB_APPLICATION.csv'
INTO TABLE job_application
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;

SELECT * FROM job_application;

LOAD DATA INFILE 'csv/Admin.csv'
INTO TABLE administrator
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;

SELECT * FROM administrator;

LOAD DATA INFILE 'csv/event.csv'
INTO TABLE event
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;

SELECT * FROM event;

LOAD DATA INFILE 'csv/eventattendence.csv'
INTO TABLE event_attendance
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;

SELECT * FROM event_attendance;

LOAD DATA INFILE 'csv/mentorship.csv'
INTO TABLE mentorship
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;

SELECT * FROM mentorship;

LOAD DATA INFILE 'csv/history.csv'
INTO TABLE employment_history
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS
(employment_id, alumni_id, employer_id, job_title, start_date, @end_date, @job_posting_id)
SET 
    end_date = NULLIF(@end_date, ''),
    job_posting_id = NULLIF(@job_posting_id, '');


SELECT * FROM employment_history;



INSERT INTO Alumni (alumni_id, full_name, date_of_birth, nationality, contact_information, current_location, graduation_year, mobility_track, specialization, current_job_title, skills_certifications, profile_visibility, status, linkedin_profile) 
VALUES 
(51, 'John Doe', '1990-04-15', 'United States', 'john.doe@example.com', 'New York', 2012, 'Global Exchange Program', 'Computer Science', 'Software Engineer', 'Certified in Python', 'Public', 'Active', 'https://www.linkedin.com/in/johndoe'),
(52, 'Jane Smith', '1988-07-22', 'Canada', 'jane.smith@example.com', 'Toronto', 2010, 'International Internship Program', 'Business', 'Marketing Manager', 'MBA in Digital Marketing', 'Private', 'Active', 'https://www.linkedin.com/in/janesmith'),
(53, 'Alice Johnson', '1995-03-10', 'Germany', 'alice.johnson@example.com', 'Berlin', 2018, 'Research Collaboration Program', 'Engineering', 'Mechanical Engineer', 'Certified in AutoCAD', 'Public', 'Inactive', 'https://www.linkedin.com/in/alicejohnson'),
(54, 'Robert Brown', '1992-06-05', 'United Kingdom', 'robert.brown@example.com', 'London', 2015, 'Language Study Abroad Program', 'Biology', 'Lab Technician', 'Research in Microbiology', 'Public', 'Active', 'https://www.linkedin.com/in/robertbrown'),
(55, 'Emily Wilson', '1993-09-25', 'France', 'emily.wilson@example.com', 'Paris', 2014, 'Cultural Immersion Program', 'Psychology', 'Clinical Psychologist', 'Certified in Cognitive Therapy', 'Private', 'Inactive', 'https://www.linkedin.com/in/emilywilson'),
(56, 'Michael Davis', '1991-12-12', 'Australia', 'michael.davis@example.com', 'Sydney', 2013, 'Global Exchange Program', 'Art History', 'Museum Curator', 'Art Restoration Certification', 'Public', 'Active', 'https://www.linkedin.com/in/michaeldavis'),
(57, 'Laura Martinez', '1996-01-30', 'Spain', 'laura.martinez@example.com', 'Madrid', 2019, 'International Internship Program', 'Business', 'Finance Analyst', 'CFA Level 1 Certified', 'Public', 'Active', 'https://www.linkedin.com/in/lauramartinez'),
(58, 'David Garcia', '1987-11-18', 'Mexico', 'david.garcia@example.com', 'Mexico City', 2009, 'Research Collaboration Program', 'Computer Science', 'AI Engineer', 'Machine Learning Specialist', 'Private', 'Active', 'https://www.linkedin.com/in/davidgarcia'),
(59, 'Sophia Anderson', '1994-05-08', 'Italy', 'sophia.anderson@example.com', 'Rome', 2016, 'Cultural Immersion Program', 'Engineering', 'Civil Engineer', 'Structural Analysis Expert', 'Public', 'Inactive', 'https://www.linkedin.com/in/sophiaanderson'),
(60, 'James Wilson', '1990-08-14', 'Netherlands', 'james.wilson@example.com', 'Amsterdam', 2011, 'Language Study Abroad Program', 'Psychology', 'Behavioral Therapist', 'Licensed Therapist', 'Public', 'Active', 'https://www.linkedin.com/in/jameswilson');

SELECT * FROM Alumni WHERE alumni_id >= 51;


INSERT INTO Job_Posting (job_posting_id, employer_id, job_title, job_description, job_type, application_deadline, location)
VALUES 
(51, 5, 'Marketing Specialist', 'Develops marketing strategies', 'Full-Time', '2025-06-30', 'Berlin'),
(52, 8, 'Software Developer', 'Develops web applications', 'Full-Time', '2025-07-15', 'Munich'),
(53, 3, 'Financial Analyst', 'Handles financial reports', 'Full-Time', '2025-05-20', 'Hamburg'),
(54, 7, 'HR Coordinator', 'Manages HR activities', 'Full-Time', '2025-08-10', 'Cologne'),
(55, 6, 'Project Manager', 'Oversees project progress', 'Full-Time', '2025-09-01', 'Frankfurt');


INSERT INTO Job_Application (job_application_id, alumni_id, job_posting_id, status, submission_date, response_date)
VALUES 
(51, 51, 51, 'Accepted', '2025-05-20', '2025-06-10'),
(52, 52, 52, 'Accepted', '2025-06-15', '2025-07-05'),
(53, 53, 53, 'Accepted', '2025-04-25', '2025-05-15'),
(54, 54, 54, 'Accepted', '2025-07-10', '2025-07-30'),
(55, 55, 55, 'Accepted', '2025-08-01', '2025-08-20'),
(56, 56, 52, 'Accepted', '2025-06-30', '2025-07-15'),
(57, 57, 51, 'Accepted', '2025-05-15', '2025-06-01'),
(58, 58, 54, 'Accepted', '2025-07-20', '2025-08-05'),
(59, 59, 55, 'Accepted', '2025-08-10', '2025-08-30'),
(60, 60, 53, 'Accepted', '2025-04-30', '2025-05-20');






INSERT INTO Employment_History (employment_id, alumni_id, employer_id, job_title, start_date, end_date, job_posting_id) 
VALUES 
(51, 51, 10, 'Software Engineer', '2025-06-15', NULL, 51),
(52, 52, 15, 'Data Scientist', '2025-07-01', NULL, 52),
(53, 53, 20, 'Financial Analyst', '2025-05-10', NULL, 53),
(54, 54, 25, 'Marketing Manager', '2025-08-01', NULL, 54),
(55, 55, 30, 'Business Consultant', '2025-09-05', NULL, 55),
(56, 56, 15, 'Data Engineer', '2025-07-15', NULL, 52),
(57, 57, 10, 'Backend Developer', '2025-06-20', NULL, 51),
(58, 58, 25, 'SEO Specialist', '2025-08-10', NULL, 54),
(59, 59, 30, 'HR Specialist', '2025-09-25', NULL, 55),
(60, 60, 20, 'Financial Advisor', '2025-05-20', NULL, 53);


select * FROM job_application;

UPDATE Job_Posting 
SET employer_id = 5, job_title = 'Marketing Specialist', job_description = 'Develops marketing strategies', 
    job_type = 'Full-Time', application_deadline = '2025-06-30', location = 'Berlin'
WHERE job_posting_id = 51;

UPDATE Job_Posting 
SET employer_id = 8, job_title = 'Software Developer', job_description = 'Develops web applications', 
    job_type = 'Full-Time', application_deadline = '2025-07-15', location = 'Munich'
WHERE job_posting_id = 52;

UPDATE Job_Posting 
SET employer_id = 3, job_title = 'Financial Analyst', job_description = 'Handles financial reports', 
    job_type = 'Full-Time', application_deadline = '2025-05-20', location = 'Hamburg'
WHERE job_posting_id = 53;

UPDATE Job_Posting 
SET employer_id = 7, job_title = 'HR Coordinator', job_description = 'Manages HR activities', 
    job_type = 'Full-Time', application_deadline = '2025-08-10', location = 'Cologne'
WHERE job_posting_id = 54;

UPDATE Job_Posting 
SET employer_id = 6, job_title = 'Project Manager', job_description = 'Oversees project progress', 
    job_type = 'Full-Time', application_deadline = '2025-09-01', location = 'Frankfurt'
WHERE job_posting_id = 55;

UPDATE Job_Application 
SET alumni_id = 51, job_posting_id = 51, status = 'Accepted', submission_date = '2025-05-20', response_date = '2025-06-10'
WHERE job_application_id = 51;

UPDATE Job_Application 
SET alumni_id = 52, job_posting_id = 52, status = 'Accepted', submission_date = '2025-06-15', response_date = '2025-07-05'
WHERE job_application_id = 52;

UPDATE Job_Application 
SET alumni_id = 53, job_posting_id = 53, status = 'Accepted', submission_date = '2025-04-25', response_date = '2025-05-15'
WHERE job_application_id = 53;

UPDATE Job_Application 
SET alumni_id = 54, job_posting_id = 54, status = 'Accepted', submission_date = '2025-07-10', response_date = '2025-07-30'
WHERE job_application_id = 54;

UPDATE Job_Application 
SET alumni_id = 55, job_posting_id = 55, status = 'Accepted', submission_date = '2025-08-01', response_date = '2025-08-20'
WHERE job_application_id = 55;

UPDATE Employment_History 
SET alumni_id = 51, employer_id = 5, job_title = 'Marketing Specialist', start_date = '2025-06-15', end_date = NULL, job_posting_id = 51
WHERE employment_id = 51;

UPDATE Employment_History 
SET alumni_id = 52, employer_id = 8, job_title = 'Software Developer', start_date = '2025-07-01', end_date = NULL, job_posting_id = 52
WHERE employment_id = 52;

UPDATE Employment_History 
SET alumni_id = 53, employer_id = 3, job_title = 'Financial Analyst', start_date = '2025-05-20', end_date = NULL, job_posting_id = 53
WHERE employment_id = 53;

UPDATE Employment_History 
SET alumni_id = 54, employer_id = 7, job_title = 'HR Coordinator', start_date = '2025-08-15', end_date = NULL, job_posting_id = 54
WHERE employment_id = 54;

UPDATE Employment_History 
SET alumni_id = 55, employer_id = 6, job_title = 'Project Manager', start_date = '2025-09-10', end_date = NULL, job_posting_id = 55
WHERE employment_id = 55;















