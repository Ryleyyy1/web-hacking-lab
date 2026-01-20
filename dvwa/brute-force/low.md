# Brute Force – Low Security Level (DVWA)

## Description
The login mechanism in DVWA at low security level does not implement
any protection against brute force attacks such as rate limiting,
account lockout, or CAPTCHA.

This allows an attacker to attempt unlimited username and password
combinations.

---

## Attack Methodology

### 1. Manual Testing
Initial testing was performed by manually submitting common
credentials through the login form.

A valid login was identified by the following message:

