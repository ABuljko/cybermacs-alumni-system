# 🎓 CyberMACS Alumni System

The **CyberMACS Alumni System** is a comprehensive relational database project developed as part of a university course at **SRH University of Applied Sciences Berlin**. It is designed to manage alumni data, facilitate networking, support career development, and enhance institutional engagement through job postings, events, and mentorship programs.

---

## 📌 Features

- 👤 **Alumni Management**  
  Profiles with contact info, graduation year, job history, specializations, and privacy settings.

- 💼 **Job Portal**  
  Employers post job openings; alumni can apply and track application statuses.

- 📅 **Event System**  
  Admins create and manage events; alumni can attend, rate, and provide feedback.

- 🤝 **Mentorship Program**  
  Alumni can register as mentors or mentees and be matched based on interests and experience.

- 📊 **Analytics & Reports**  
  Powerful SQL queries generate insights into alumni engagement, employment trends, and event participation.

---

## 🧰 Technologies Used

- **MySQL 8.0** – Relational database system
- **MySQL Workbench** – For schema design and ERD/EER modeling
- **Mockaroo** – For generating realistic test data (CSV format)
- **SQL** – Data definition, querying, population, and reporting
- **ChatGPT** – Used for idea refinement and code review assistance

---

## 🗂️ Project Structure

```
CyberMACS-Alumni-System/
├── README.md                          # Project overview (this file)
├── documentation/
│   └── CyberMACS_Alumni_Report.docx   # Full project report
├── database/
│   ├── alumni.sql                     # Database schema and setup
│   ├── DATA_Template.xlsx             # Field structure overview
│   ├── alumni_db/                     # InnoDB .ibd raw files
│   └── csv/                           # Mockaroo-generated CSV data
├── diagrams/
│   ├── Conceptual ERD.jpg             # Conceptual-level diagram
│   └── Logical Design EER.png         # Logical-level EER diagram
├── queries/
│   └── *.sql                          # Analytical and operational queries
└── .gitignore
```

---

## 📊 Sample SQL Queries

```sql
-- 1. Count Alumni by Graduation Year
SELECT graduation_year, COUNT(*) AS total_alumni
FROM Alumni
GROUP BY graduation_year
ORDER BY total_alumni DESC;

-- 2. Top Employers Hiring Alumni
SELECT e.company_name, COUNT(eh.alumni_id) AS total_hires
FROM employer e
JOIN employment_history eh ON e.employer_id = eh.employer_id
GROUP BY e.company_name
ORDER BY total_hires DESC
LIMIT 10;

-- 3. Alumni Who Applied and Got Hired
SELECT a.full_name, jp.job_title, e.company_name
FROM job_application ja
JOIN job_posting jp ON ja.job_posting_id = jp.job_posting_id
JOIN employer e ON jp.employer_id = e.employer_id
JOIN employment_history eh ON ja.alumni_id = eh.alumni_id AND eh.employer_id = e.employer_id
JOIN alumni a ON a.alumni_id = ja.alumni_id
WHERE eh.start_date > ja.submission_date;
```

---

## 📋 Business Rules Overview

- Alumni can:
  - Apply to multiple jobs
  - Attend multiple events
  - Act as both mentors and mentees
- Job applications:
  - Link alumni to job postings
  - Track application and hiring status
- Events:
  - Are managed by admins
  - Support ratings and feedback from attendees
- Mentorships:
  - Are many-to-many relationships
- Employers:
  - Can post jobs
  - Track alumni hires through employment history

📄 For detailed explanations, see `documentation/CyberMACS_Alumni_Report.docx`.

---

## 👥 Authors

- **Amin Niaziardekani** – [@amin4554](https://github.com/amin4554)  
- **Swapnaneel Sarkhel**  
- **Ajdin Buljko** – [@ABuljko](https://github.com/ABuljko)

---

## 🏛️ University & Course Info

- **University**: SRH University of Applied Sciences Berlin  
- **Course**: Databases  
- **Supervisor**: Prof. Dilan Ebru  
- **Date**: February 11, 2025

---

## 🔒 License

This project is intended for **academic and educational use only**.  
All data is **mock data** generated for demonstration purposes.

