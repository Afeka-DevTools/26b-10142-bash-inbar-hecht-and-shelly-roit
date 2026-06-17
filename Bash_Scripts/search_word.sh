#!/bin/bash
echo "=== Search Word in File ==="

# יצירת קובץ טקסט זמני לדוגמה
echo "This is a normal line" > temp_file.txt
echo "This line contains an error" >> temp_file.txt
echo "Another normal line" >> temp_file.txt
echo "Critical error occurred here" >> temp_file.txt

# חיפוש המילה 'error' בקובץ
echo "Searching for 'error':"
grep "error" temp_file.txt

# מחיקת הקובץ הזמני בסיום
rm temp_file.txt
