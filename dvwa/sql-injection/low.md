# SQL Injection — DVWA (Low Security)

## 📌 Vulnerability Type
SQL Injection

## 🔐 Security Level
Low

## 🧾 Payload Used

' OR '1'='1


## ✅ Result
The application returned all records from the users table.

## 🔍 Root Cause
User input is directly concatenated into SQL query
without input validation or prepared statements.

## 💥 Impact
- Unauthorized data access
- User enumeration

## 🛠️ Mitigation
- Use prepared statements
- Sanitize user input
- Apply least privilege to database user

## 📖 Reference
OWASP A03: Injection


