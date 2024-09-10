# Imber
Imber recursively scans files and directories in a given path. It searches for patterns in files that match a complex regular expression defined in the `patt` variable. The script prompts the user to enter a directory path, performs the scan, and outputs the matching patterns to a file named "cred.txt."

### Installation & Usage 
```bash
git clone https://github.com/by1nn1t/Imber.git

chmod +x imber.sh

./imber.sh
```

### Example Content of Scanned Files:

```bash
file1.txt:

Username: john_doe
Password: StrongPass123!
Email: john@example.com

file2.txt:

Temporary login:
Username: admin
Password: Admin!2024

Security code: 8jrf*2028AB

file3.txt:

Invalid passwords:
abcd1234
passWord

Generated cred.txt Output:

StrongPass123!
Admin!2024
8jrf*2028AB
```
In this example, only the lines that match the pattern (having at least one uppercase letter, lowercase letter, digit, special character, and 8 or more characters) are included in cred.txt.

### Copyright © 2023 just1nn1t
#### All rights reserved. This project is licensed under GitHub's default copyright laws, meaning that I retain all rights to my source code and no one may reproduce, distribute, or create derivative works from my work.

#### The use of this script is the sole responsibility of the end user. The developers assume NO liability and are NOT responsible for any misuse or damage caused by this script.
