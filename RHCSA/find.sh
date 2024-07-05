# Find all files user, which are not assigned in to his basic group. 

find / -user username ! -group username -type f