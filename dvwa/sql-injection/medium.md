# SQL Injection – Medium Level (DVWA)

## Overview
At Medium security level, DVWA applies basic input filtering.
Some characters such as quotes are filtered, but the application
still uses dynamic SQL queries, making it vulnerable.

---

## Vulnerable Endpoint
GET /DVWA/vulnerabilities/sqli/?id=1&Submit=Submit

Parameter:
- id

---

## Payload Used
```sql
1 OR 1=1

---

Why This Works

The application blocks quotes (') but does not block
logical operators.

The SQL query becomes
SELECT first_name, last_name
FROM users
WHERE user_id = 1 OR 1=1;
:
