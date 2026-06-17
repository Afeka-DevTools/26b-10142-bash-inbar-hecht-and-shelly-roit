#!/bin/bash

# יצירת תו אחד מכל סוג נדרש כדי להבטיח עמידה בתנאים
upper=$(tr -dc 'A-Z' < /dev/urandom | head -c 1)
lower=$(tr -dc 'a-z' < /dev/urandom | head -c 1)
digit=$(tr -dc '0-9' < /dev/urandom | head -c 1)
special=$(tr -dc '!@#$%^&*()_+-=[]{}|;:,.<>?' < /dev/urandom | head -c 1)

# יצירת 6 תווים נוספים מכל הסוגים האפשריים כדי להשלים לאורך של 10 תווים
rest=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+-=[]{}|;:,.<>?' < /dev/urandom | head -c 6)

# שרשור כל התווים למחרוזת אחת
raw_password="${upper}${lower}${digit}${special}${rest}"

# ערבוב של כל התווים במחרוזת כדי שהסדר (אות גדולה, אות קטנה וכו') לא יהיה קבוע
final_password=$(echo "$raw_password" | fold -w1 | shuf | tr -d '\n')

# הדפסת הסיסמה הסופית
echo "Generated Password: $final_password"