# Used Memory Storage
#!/bin/bash

echo "Removed old 'status_ums.md'"
rm status_ums.md

df -h /Volumes/GARMIN/ >> status_ums.md
echo "" >> status_ums.md
echo "-------------------" >> status_ums.md
echo "" >> status_ums.md

echo "Created new 'status_ums.md'"

date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S%n" >> status_ums.md
echo "Used Memory Storage" >> status_ums.md
echo "-------------------" >> status_ums.md
du -sch ./* >> status_ums.md
echo "" >> status_ums.md

echo "Used Memory Garmin" >> status_ums.md
echo "-------------------" >> status_ums.md
du -sch GARMIN/* >> status_ums.md
echo "" >> status_ums.md

less status_ums.md
