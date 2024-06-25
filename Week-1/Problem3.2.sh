# for loop to create these files
#file1;dir1/subdir1
#file2;dir2/subdir2

while IFS= read -r line; do
    name=$(echo "$line" | cut -d';' -f1)
    path=$(echo "$line" | cut -d';' -f2 | tr '/' '&')
    touch "$name;$path"
done < path.txt
