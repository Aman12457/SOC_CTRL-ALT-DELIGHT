# Alphabet Styling Script

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <alphabet>"
    exit 1
fi

alphabet=$1

if [ "$alphabet" == "A" ]; then
    echo "  A  "
    echo " A A "
    echo "AAAAA"
    echo "A   A"
    echo "A   A"
else
    echo "Style not defined for alphabet: $alphabet"
fi
