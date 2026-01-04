# DVWA SQL Injection Labs

This repository documents my hands-on learning process with **SQL Injection vulnerabilities**
using **Damn Vulnerable Web Application (DVWA)**.

The purpose of this repository is to demonstrate:
- Practical understanding of SQL Injection
- Differences between security levels
- How frontend restrictions do not guarantee backend security

⚠️ This project is for **educational purposes only**.

---

## 🛠️ Environment Setup

- Operating System: Linux
- Web Server: Apache
- Database: MariaDB / MySQL
- PHP Version: Installed via local environment
- Vulnerable App: DVWA (Damn Vulnerable Web Application)

---

## 🔓 SQL Injection – Low Level

### Description
At **Low** security level, DVWA provides a text input field that directly accepts user input.
The application does not sanitize or validate the input before using it in an SQL query.

### Payload Used
```sql
' OR '1'='1
