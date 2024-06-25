# Installer Script

# Check if scripts are present
scripts=("basic_file_manager.sh" "style_alphabet.sh" "style_sentence.sh" "interactive_ui.sh")
for script in "${scripts[@]}"; do
    if [ ! -f "$script" ]; then
        echo "$script not found. Downloading..."
        curl -O "https://example.com/$script"
    fi
done

# Move scripts to /usr/local/bin and make them executable
for script in "${scripts[@]}"; do
    sudo mv "$script" /usr/local/bin/
    sudo chmod +x /usr/local/bin/"$script"
done

# Create aliases
echo "alias filemanager='/usr/local/bin/basic_file_manager.sh'" >> ~/.bashrc
echo "alias stylealpha='/usr/local/bin/style_alphabet.sh'" >> ~/.bashrc
echo "alias stylesentence='/usr/local/bin/style_sentence.sh'" >> ~/.bashrc
echo "alias interactiveui='/usr/local/bin/interactive_ui.sh'" >> ~/.bashrc

# Source .bashrc to make aliases available
source ~/.bashrc

# Progress reporting
echo "Installation complete"
