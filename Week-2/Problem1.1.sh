#  Basic File Manager with Progress Reporting

# Read from path.txt and create files
while IFS= read -r line; do
    name=$(echo "$line" | cut -d';' -f1)
    path=$(echo "$line" | cut -d';' -f2 | tr '/' '&')
    touch "$name;$path"
    echo -n "[#........] $name;$path created"
    sleep 0.1
done < path.txt

# Move files to their respective directories
while IFS= read -r line; do
    name=$(echo "$line" | cut -d';' -f1)
    path=$(echo "$line" | cut -d';' -f2)
    pathi=$(echo "$path" | tr '/' '&')
    mkdir -p "$path"
    mv "$name;$pathi" "$path/$name"
    echo -n "[######...] $path/$name moved"
    sleep 0.1
done < path.txt
