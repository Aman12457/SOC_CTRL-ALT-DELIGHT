#for baigans
while IFS= read -r line; do
    name=$(echo "$line" | cut -d';' -f1)
    path=$(echo "$line" | cut -d';' -f2)
    mkdir -p "$path"
    mv "$name;$path" "$path/$name"
done < path.txt

# for aayeins
while IFS= read -r line; do
    name=$(echo "$line" | cut -d';' -f1)
    path=$(echo "$line" | cut -d';' -f2)
    pathi=$(echo "$path" | tr '/' '&')
    mkdir -p "$path"
    mv "$name;$pathi" "$path/$name"
done < path.txt
