# Sentence Styling Script


# Check if arguments are provided
if [ -z "$1" ]; then
    echo "Usage: $0 <sentence>"
    exit 1
fi

sentence=$*
len=${#sentence}

# Example styled output for the sentence
for (( i=0; i<len; i++ )); do
    char=${sentence:$i:1}
    if [ "$char" == "A" ]; then
        echo "  A  "
        echo " A A "
        echo "AAAAA"
        echo "A   A"
        echo "A   A"
    elif [ "$char" == " " ]; then
        echo "     "
        echo "     "
        echo "     "
        echo "     "
        echo "     "
    else
        echo "Style not defined for character: $char"
    fi
    echo
done
