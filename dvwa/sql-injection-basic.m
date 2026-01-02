# SQL Injection - Basic (DVWA)

## Security Level
Low

## Payload
' OR '1'='1

## Result
All users were displayed.

## Conclusion
The application is vulnerable to SQL Injection
because user input is not sanitized.
