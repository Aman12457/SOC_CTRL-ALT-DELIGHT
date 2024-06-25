# Interactive UI Script


# Function to display styled message
styled_message() {
    ./style_sentence.sh "$1"
}

# Welcome message
styled_message "Welcome"

# Ask for the user's name
read -p "Enter your name: " name
styled_message "$name"

# Main menu
while true; do
    echo "Choose an option:"
    echo "1. Run basic file manager"
    echo "2. Style a string"
    echo "3. Run a command"
    echo "4. Exit"
    read -p "Option: " option
    
    case $option in
        1)
            ./basic_file_manager.sh
            ;;
        2)
            read -p "Enter a string to style: " string
            styled_message "$string"
            ;;
        3)
            read -p "Enter a command to run: " cmd
            eval $cmd
            ;;
        4)
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
