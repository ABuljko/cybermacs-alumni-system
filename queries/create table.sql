CREATE DATABASE alumni_db;
USE alumni_db;
CREATE TABLE Administrator (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role ENUM('Admin', 'EventManager', 'JobManager') NOT NULL
);
CREATE TABLE Alumni (
    alumni_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    date_of_birth DATE NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    contact_information VARCHAR(255) UNIQUE NOT NULL,
    current_location VARCHAR(100),
    graduation_year YEAR NOT NULL,
    mobility_track VARCHAR(100),
    specialization VARCHAR(100),
    current_job_title VARCHAR(100),
    skills_certifications TEXT,
    profile_visibility ENUM('Public', 'Private') DEFAULT 'Public',
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    linkedin_profile VARCHAR(255)
);
CREATE TABLE Employer (
    employer_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(255) UNIQUE NOT NULL,
    industry VARCHAR(100),
    contact_information VARCHAR(255),
    location VARCHAR(100)
);
CREATE TABLE Job_Posting (
    job_posting_id INT AUTO_INCREMENT PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL,
    job_description TEXT,
    job_type ENUM('Full-time', 'Part-time', 'Internship', 'Contract') NOT NULL,
    application_deadline DATE,
    location VARCHAR(100),
    employer_id INT NOT NULL,
    FOREIGN KEY (employer_id) REFERENCES Employer(employer_id) ON DELETE CASCADE
);
CREATE TABLE Job_Application (
    job_application_id INT AUTO_INCREMENT PRIMARY KEY,
    alumni_id INT NOT NULL,
    job_posting_id INT NOT NULL,
    status ENUM('Pending', 'Accepted', 'Rejected') DEFAULT 'Pending',
    submission_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (alumni_id) REFERENCES Alumni(alumni_id) ON DELETE CASCADE,
    FOREIGN KEY (job_posting_id) REFERENCES Job_Posting(job_posting_id) ON DELETE CASCADE
);
CREATE TABLE Employment_History (
    employment_id INT AUTO_INCREMENT PRIMARY KEY,
    alumni_id INT NOT NULL,
    employer_id INT NOT NULL,
    job_posting_id INT,
    job_title VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    FOREIGN KEY (alumni_id) REFERENCES Alumni(alumni_id) ON DELETE CASCADE,
    FOREIGN KEY (employer_id) REFERENCES Employer(employer_id) ON DELETE CASCADE,
    FOREIGN KEY (job_posting_id) REFERENCES Job_Posting(job_posting_id)
);
ALTER TABLE Employment_History 
MODIFY COLUMN job_posting_id INT AFTER end_date;
CREATE TABLE event (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    admin_id INT NOT NULL,
    event_name VARCHAR(100) NOT NULL,
    event_description TEXT NOT NULL,
    event_date DATETIME NOT NULL,
    event_location VARCHAR(100),
    FOREIGN KEY (admin_id) REFERENCES Administrator(admin_id) ON DELETE CASCADE
);
CREATE TABLE Event_Attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    alumni_id INT NOT NULL,
    event_id INT NOT NULL,
    feedback_text TEXT,
    rating TINYINT UNSIGNED CHECK (rating BETWEEN 1 AND 5),
    FOREIGN KEY (alumni_id) REFERENCES Alumni(alumni_id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES Event(event_id) ON DELETE CASCADE
);
CREATE TABLE Mentorship (
    mentorship_id INT AUTO_INCREMENT PRIMARY KEY,
    mentor_alumni_id INT NOT NULL,
    mentee_alumni_id INT NOT NULL,
    mentorship_type ENUM('Career Advice', 'Internship', 'General'),
    availability_status ENUM('Available', 'Unavailable') NOT NULL,
    FOREIGN KEY (mentor_alumni_id) REFERENCES Alumni(alumni_id) ON DELETE CASCADE,
    FOREIGN KEY (mentee_alumni_id) REFERENCES Alumni(alumni_id) ON DELETE CASCADE
);

ALTER TABLE mentorship 
MODIFY COLUMN mentorship_type ENUM('Career Advice', 'Internship', 'General');

ALTER TABLE Employment_History
 MODIFY COLUMN end_date DATE DEFAULT NULL;
 












